import subprocess

FILE_NAME = "resume"


def compile_tex_to_pdf():
    subprocess.run(["mkdir", "tmp"])
    subprocess.run(["pdflatex", f"{FILE_NAME}.tex"], check=True)
    print(f"Success: Generating resume")
    subprocess.run(["mv", f"tmp/{FILE_NAME}.pdf", "."])


def convert_pdf_to_png():
    subprocess.run(
        [
            "pdftoppm",
            "-f",
            "1",
            "-l",
            "1",
            "-singlefile",
            f"{FILE_NAME}.pdf",
            FILE_NAME,
            "-png",
        ],
        check=True,
    )
    print(f"Success: Generating image preview")


if __name__ == "__main__":
    compile_tex_to_pdf()
    convert_pdf_to_png()
