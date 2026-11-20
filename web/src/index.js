import './css/style.css'
import './css/index.css'


const video = document.querySelector(".hero-video");
video.playbackRate = 0.75;


const asciiLogo = document.querySelector(".ascii-logo");
const asciiPre = asciiLogo?.querySelector("pre");

if (asciiLogo && asciiPre) {
    const BASE_FONT_SIZE = 16;
    const MIN_FONT_SIZE = 6;

    const resizeObserver = new ResizeObserver(() => {
        asciiPre.style.setProperty(
            "--ascii-font-size",
            `${BASE_FONT_SIZE}px`
        );

        const availableWidth = asciiLogo.clientWidth;
        const requiredWidth = asciiPre.scrollWidth;

        if (requiredWidth > availableWidth) {
            const scale = availableWidth / requiredWidth;
            const fontSize = Math.max(
                MIN_FONT_SIZE,
                BASE_FONT_SIZE * scale
            );

            asciiPre.style.setProperty(
                "--ascii-font-size",
                `${fontSize}px`
            );
        }
    });

    resizeObserver.observe(asciiLogo);
}
