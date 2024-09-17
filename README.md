<a name="readme-top"></a>
<!--
*** Thanks for checking out the Best-README-Template. If you have a suggestion
*** that would make this better, please fork the repo and create a pull request
*** or simply open an issue with the tag "enhancement".
*** Don't forget to give the project a star!
*** Thanks again! Now go create something AMAZING! :D
-->



<!-- PROJECT SHIELDS -->
<!--
*** I'm using markdown "reference style" links for readability.
*** Reference links are enclosed in brackets [ ] instead of parentheses ( ).
*** See the bottom of this document for the declaration of the reference variables
*** for contributors-url, forks-url, etc. This is an optional, concise syntax you may use.
*** https://www.markdownguide.org/basic-syntax/#reference-style-links
-->
[![Contributors][contributors-shield]][contributors-url]
[![Forks][forks-shield]][forks-url]
[![Stargazers][stars-shield]][stars-url]
[![Issues][issues-shield]][issues-url]
[![MIT License][license-shield]][license-url]
[![LinkedIn][linkedin-shield]][linkedin-url]



<!-- PROJECT LOGO -->
<br />
<div align="center">
  <a href="https://github.com/claesjaeger/bashlib">
    <img src="images/bashlib.png" alt="Logo" width="500 heigth="500">
  </a>

<h3 align="center">The Bash Library</h3>

  <p align="center">
    A collection of functions that come in handy and can be reused in several scripts.
    <br />
    <a href="https://github.com/claesjaeger/bashlib"><strong>Explore the docs »</strong></a>
    <br />
    <br />
    <a href="https://github.com/claesjaeger/bashlib">View Demo</a>
    ·
    <a href="https://github.com/claesjaeger/bashlib/issues">Report Bug</a>
    ·
    <a href="https://github.com/claesjaeger/bashlib/issues">Request Feature</a>
  </p>
</div>



<!-- TABLE OF CONTENTS -->
<details>
  <summary>Table of Contents</summary>
  <ol>
    <li>
      <a href="#about-the-project">About The Project</a>
      <ul>
        <li><a href="#built-with">Built With</a></li>
      </ul>
    </li>
    <li>
      <a href="#getting-started">Getting Started</a>
      <ul>
        <li><a href="#prerequisites">Prerequisites</a></li>
        <li><a href="#installation">Installation</a></li>
      </ul>
    </li>
    <li><a href="#usage">Usage</a></li>
    <li><a href="#roadmap">Roadmap</a></li>
    <li><a href="#contributing">Contributing</a></li>
    <li><a href="#license">License</a></li>
    <li><a href="#contact">Contact</a></li>
    <li><a href="#acknowledgments">Acknowledgments</a></li>
  </ol>
</details>



<!-- ABOUT THE PROJECT -->
## About The Project
This library is a collection of functions that can be imported and reused across your bash scripts.

I have not found a good solution for a library in Bash. So this is the solution I am using, until I find something better.

The content of the lib will be extended, when ever a function that can be reused turns up.

<p align="right">(<a href="#readme-top">back to top</a>)</p>



### Built With
* [![BourneAgainSHell][Bash.Logo]][Bash-url]
* [![Vim][Vim.Logo]][Vim-url]

<p align="right">(<a href="#readme-top">back to top</a>)</p>



<!-- GETTING STARTED -->
## Getting Started

It is simple to use the lib. Just clone it to you home folder, and source it in your scripts

### Prerequisites
* Bash shell on your system

### Installation

1. Clone the repo to you user folder
   ```sh
   git clone https://github.com/claesjaeger/bashlib.git
   ```
3. Source the main script in you bash scripts
   ```sh
   source $HOME/bashlib/bashlib.bash
   ```
4. Call the funtions in your script
   ```sh
   printHelp "-h"
   
   HEADERLENGTH=80
   header "Cool Header" $HEADERLENGTH
   ```

<p align="right">(<a href="#readme-top">back to top</a>)</p>



<!-- USAGE EXAMPLES -->
## Usage
```
# Print help for at function. See printHelp.bash on how to format the help
printHelp "-h"

# Print a header with the text parsen to the function as arg1, and the width parsed as arg2
HEADERLENGTH=80
header "Cool Header" $HEADERLENGTH

# Supress the output from the command, and show a spinner while the command finished
(sudo apt-get update> /dev/null 2>&1) &
spinner $!

# capture a password entered in the terminal, and replace all chars with *
password=$(ask "Enter Password")
```


<p align="right">(<a href="#readme-top">back to top</a>)</p>



<!-- ROADMAP -->
## Roadmap

- [x] Make a library that can be included in Bash scripts
- [x] Update Readme to reflect project status
- [ ] Planned functions to add
    - [ ] No functions planned at the moment
    - [ ] No functions planned at the moment

See the [open issues](https://github.com/claesjaeger/bashlib/issues) for a full list of proposed features (and known issues).

<p align="right">(<a href="#readme-top">back to top</a>)</p>



<!-- CONTRIBUTING -->
## Contributing

Contributions are what make the open source community such an amazing place to learn, inspire, and create. Any contributions you make are **greatly appreciated**.

If you have a suggestion that would make this better, please fork the repo and create a pull request. You can also simply open an issue with the tag "enhancement".
Don't forget to give the project a star! Thanks again!

1. Fork the Project
2. Create your Feature Branch (`git checkout -b feature/AmazingFeature`)
3. Commit your Changes (`git commit -m 'Add some AmazingFeature'`)
4. Push to the Branch (`git push origin feature/AmazingFeature`)
5. Open a Pull Request

<p align="right">(<a href="#readme-top">back to top</a>)</p>



<!-- LICENSE -->
## License

Distributed under the MIT License. See `LICENSE.txt` for more information.

<p align="right">(<a href="#readme-top">back to top</a>)</p>



<!-- CONTACT -->
## Contact

Claes Jæger - claeslund@gmail.com

Project Link: [https://github.com/claesjaeger/bashlib](https://github.com/claesjaeger/bashlib)

<p align="right">(<a href="#readme-top">back to top</a>)</p>



<!-- ACKNOWLEDGMENTS -->
## Acknowledgments

* []()
* []()
* []()

<p align="right">(<a href="#readme-top">back to top</a>)</p>



<!-- MARKDOWN LINKS & IMAGES -->
<!-- https://www.markdownguide.org/basic-syntax/#reference-style-links -->
[contributors-shield]: https://img.shields.io/github/contributors/claesjaeger/bashlib.svg?style=for-the-badge
[contributors-url]: https://github.com/claesjaeger/bashlib/graphs/contributors
[forks-shield]: https://img.shields.io/github/forks/claesjaeger/bashlib.svg?style=for-the-badge
[forks-url]: https://github.com/claesjaeger/bashlib/network/members
[stars-shield]: https://img.shields.io/github/stars/claesjaeger/bashlib.svg?style=for-the-badge
[stars-url]: https://github.com/claesjaeger/bashlib/stargazers
[issues-shield]: https://img.shields.io/github/issues/claesjaeger/bashlib.svg?style=for-the-badge
[issues-url]: https://github.com/claesjaeger/bashlib/issues
[license-shield]: https://img.shields.io/github/license/claesjaeger/bashlib.svg?style=for-the-badge
[license-url]: https://github.com/claesjaeger/bashlib/blob/master/LICENSE.txt
[linkedin-shield]: https://img.shields.io/badge/-LinkedIn-black.svg?style=for-the-badge&logo=linkedin&colorB=555
[linkedin-url]: https://linkedin.com/in/claesjaeger
[product-screenshot]: images/screenshot.png
[Bash-url]:  https://www.gnu.org/software/bash/
[Bash.Logo]: https://img.shields.io/badge/Shell-bash?style=for-the-badge&logo=GNU%20Bash&logoColor=green&label=bash&labelColor=grey&color=olive
[Vim.Logo]:  https://img.shields.io/badge/Vim-Editor-3b883b?style=for-the-badge&logo=vim
[Vim-url]:   https://www.vim.org/
