const previewBox = document.getElementById('preview-box');
const inputs = document.querySelectorAll('input, select');

// Elementos de salida de texto
const outWidth = document.getElementById('out-width');
const outHeight = document.getElementById('out-height');
const outColor = document.getElementById('out-color');

function updatePreview() {
    // 1. Manejar Dimensiones
    const wVal = document.getElementById('width-input').value;
    const wUnit = document.getElementById('width-unit').value;
    const hVal = document.getElementById('height-input').value;
    const hUnit = document.getElementById('height-unit').value;

    const widthStyle = `${wVal}${wUnit}`;
    const heightStyle = `${hVal}${hUnit}`;

    previewBox.style.width = widthStyle;
    previewBox.style.height = heightStyle;
    
    outWidth.textContent = widthStyle;
    outHeight.textContent = heightStyle;

    // 2. Manejar Color
    const format = document.getElementById('color-format').value;
    let colorStyle = '';

    if (format === 'hex') {
        colorStyle = document.getElementById('hex-picker').value;
    } else if (format === 'rgb') {
        const r = document.getElementById('r-val').value;
        const g = document.getElementById('g-val').value;
        const b = document.getElementById('b-val').value;
        colorStyle = `rgb(${r}, ${g}, ${b})`;
    } else {
        const h = document.getElementById('h-val').value;
        const s = document.getElementById('s-val').value;
        const l = document.getElementById('l-val').value;
        colorStyle = `hsl(${h}, ${s}%, ${l}%)`;
    }

    previewBox.style.backgroundColor = colorStyle;
    outColor.textContent = colorStyle;
}

function renderColorInputs() {
    const format = document.getElementById('color-format').value;
    const container = document.getElementById('color-inputs');
    container.innerHTML = '';

    if (format === 'hex') {
        container.innerHTML = `<input type="color" id="hex-picker" value="#3498db">`;
    } else if (format === 'rgb') {
        container.innerHTML = `
            <label>R</label><input type="range" id="r-val" min="0" max="255" value="52">
            <label>G</label><input type="range" id="g-val" min="0" max="255" value="152">
            <label>B</label><input type="range" id="b-val" min="0" max="255" value="219">
        `;
    } else {
        container.innerHTML = `
            <label>Hue</label><input type="range" id="h-val" min="0" max="360" value="204">
            <label>Sat %</label><input type="range" id="s-val" min="0" max="100" value="70">
            <label>Light %</label><input type="range" id="l-val" min="0" max="100" value="53">
        `;
    }

    // Re-vincular eventos a los nuevos inputs
    container.querySelectorAll('input').forEach(input => {
        input.addEventListener('input', updatePreview);
    });
    updatePreview();
}

// Inicialización y Eventos
document.getElementById('color-format').addEventListener('change', renderColorInputs);
document.querySelectorAll('.control-group input, select').forEach(el => {
    el.addEventListener('input', updatePreview);
});

// Render inicial
renderColorInputs();