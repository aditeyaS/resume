# Resume
### ATS friendly resume for software engineers.

> [!IMPORTANT]
> ATS friendliness depends a lot on the contents of the resume.

## Motivation
I was creating a resume in Latex because Managing the formatting on google docs was difficult. I started searching for ATS-friendly resumes, and I came across [@sb2nov resume](https://github.com/sb2nov/resume) which inspired me. But there were some tweaks I needed so made this.

## Preview
![Resume Preview](/resume.png)


## Local Development
```bash
docker build -t <image_name> .
docker run --rm -v $(pwd):/workspace <image_name>
```

## Quick start
- Go to [overleaf.com](https://www.overleaf.com) and create a blank project.
- Copy the contents of [resume.tex](https://github.com/aditeyaS/resume/blob/main/resume.tex) and make you changes.
- Download the pdf

## Deploy
[This](https://github.com/aditeyaS/resume/blob/main/.github/workflows/update.yml) workflow generates the latest resume and updates on this repository. So you can link your resume anywhere and it will always be updated.
