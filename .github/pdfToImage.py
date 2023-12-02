from pdf2image import convert_from_path
from PIL import Image

def pdf_to_image(pdf_path, image_path):
    images = convert_from_path(pdf_path)
    
    # Combine pages side by side
    combined_width = sum(image.width for image in images)
    max_height = max(image.height for image in images)

    # Create a new image with the calculated dimensions
    combined_image = Image.new('RGB', (combined_width, max_height))

    # Paste each page into the combined image
    current_width = 0
    for image in images:
        combined_image.paste(image, (current_width, 0))
        current_width += image.width

    # Save the combined image
    combined_image.save(f"{image_path}.png", "PNG")

if __name__ == "__main__":
    pdf_path = "./DavidPietrocola-resume.pdf"
    image_path = "DavidPietrocola-resume"

    pdf_to_image(pdf_path, image_path)
