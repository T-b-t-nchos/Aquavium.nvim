import fs from "node:fs/promises";
import path from "node:path";
import { fileURLToPath } from "node:url";

const __filename = fileURLToPath(import.meta.url);
const __dirname = path.dirname(__filename);

const ROOT_DIR = path.resolve(__dirname, "..");
const DIST_DIR = path.join(ROOT_DIR, "dist");

const SITE_URL = "https://aquavium.nchos.net";

const OUTPUT_FILE = path.join(DIST_DIR, "sitemap.xml");

const EXCLUDED_FILES = new Set([
    "404.html",
]);

const EXCLUDED_EXTENSIONS = new Set([
    ".draft.html",
]);

/**
 * HTMLファイルを再帰的に収集する。
 */
async function collectHtmlFiles(directory) {
    const files = [];

    const entries = await fs.readdir(directory, {
        withFileTypes: true,
    });

    for (const entry of entries) {
        const fullPath = path.join(directory, entry.name);

        if (entry.isSymbolicLink()) {
            throw new Error(
                `Symbolic links are not supported: ${fullPath}`
            );
        }

        if (entry.isDirectory()) {
            files.push(
                ...await collectHtmlFiles(fullPath)
            );

            continue;
        }

        if (!entry.isFile()) {
            continue;
        }

        if (!entry.name.endsWith(".html")) {
            continue;
        }

        if (EXCLUDED_FILES.has(entry.name)) {
            continue;
        }

        if (
            [...EXCLUDED_EXTENSIONS].some(
                extension => entry.name.endsWith(extension)
            )
        ) {
            continue;
        }

        files.push(fullPath);
    }

    return files;
}

/**
 * URLパスをエンコードする。
 */
function encodePath(relativePath) {
    return relativePath
        .split("/")
        .map(segment => encodeURIComponent(segment))
        .join("/");
}

/**
 * HTMLファイルのパスをURLに変換する。
 */
function htmlPathToUrl(filePath) {
    let relativePath = path.relative(
        DIST_DIR,
        filePath
    ).replaceAll(path.sep, "/");

    if (relativePath === "index.html") {
        return `${SITE_URL}/`;
    }

    if (relativePath.endsWith("/index.html")) {
        relativePath = relativePath.slice(
            0,
            -"index.html".length
        );
    } else {
        relativePath = relativePath.replace(/\.html$/, "");
    }

    return `${SITE_URL}/${encodePath(relativePath)}`;
}

/**
 * XML特殊文字をエスケープする。
 */
function escapeXml(value) {
    return value
        .replaceAll("&", "&amp;")
        .replaceAll("<", "&lt;")
        .replaceAll(">", "&gt;")
        .replaceAll('"', "&quot;")
        .replaceAll("'", "&apos;");
}

/**
 * Sitemapを生成する。
 */
export async function generateSitemap() {
    console.log("\nGenerating sitemap...\n");

    const htmlFiles = await collectHtmlFiles(DIST_DIR);

    const urls = htmlFiles
        .map(htmlPathToUrl)
        .sort((a, b) => a.localeCompare(b));

    if (urls.length === 0) {
        throw new Error("No HTML pages found.");
    }

    const sitemap = `<?xml version="1.0" encoding="UTF-8"?>
<urlset xmlns="http://www.sitemaps.org/schemas/sitemap/0.9">
${urls
    .map(url => `    <url>\n        <loc>${escapeXml(url)}</loc>\n    </url>`)
    .join("\n")}
</urlset>
`;

    await fs.writeFile(
        OUTPUT_FILE,
        sitemap,
        "utf8"
    );

    console.log(
        `SITEMAP  ${path.relative(ROOT_DIR, OUTPUT_FILE)}`
    );

    console.log(`Found ${urls.length} HTML page(s).`);

    for (const url of urls) {
        console.log(`  ${url}`);
    }
}

generateSitemap().catch(error => {
    console.error(error);
    process.exitCode = 1;
});

