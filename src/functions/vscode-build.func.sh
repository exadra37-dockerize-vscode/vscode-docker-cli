#!/bin/bash
# @package exadra37-dockerize/visual-studio-code
# @link    https://gitlab.com/u/exadra37-dockerize/visual-studio-code
# @since   2017/03/10
# @license GPL-3.0
# @author  Exadra37(Paulo Silva) <exadra37ingmailpointcom>
#
# Social Links:
# @link    Auhthor:  https://exadra37.com
# @link    Github:   https://gitlab.com/Exadra37
# @link    Github:   https://github.com/Exadra37
# @link    Linkedin: https://uk.linkedin.com/in/exadra37
# @link    Twitter:  https://twitter.com/Exadra37

set -e

########################################################################################################################
# Sourcing
########################################################################################################################

    ebvsc_functions_dir=$(cd "$( dirname "${BASH_SOURCE}" )" && pwd )

    source "${ebvsc_functions_dir}"/vars/get-var-docker-image-name.func.sh
    source "${ebvsc_functions_dir}"/vars/get-var-docker-buid-context.func.sh
    source "${ebvsc_functions_dir}"/../../vendor/exadra37-bash/dockerize-app/src/functions/docker-build.func.sh
    source "${ebvsc_functions_dir}"/../../vendor/exadra37-bash/pretty-print/src/functions/raw-color-print.func.sh


########################################################################################################################
# Functions
########################################################################################################################

    function VSCode_Build()
    {
        local _docker_image_name; GET_VAR_DOCKER_IMAGE_NAME _docker_image_name

        local _docker_build_context; GET_VAR_DOCKER_BUILD_CONTEXT _docker_build_context

        Docker_Build "${_docker_image_name}" "${_docker_build_context}"

        Print_Text_With_Label "To Run Visual Studio Code" "vscode"
    }
