variable "gcp_project" {
    description = "GCP Project to target."
    type        = string
}

variable "gcp_region" {
    description = "GCP Region to run the build in."
    type        = string
    default = "us-central1"
}

variable "gcp_token" {
    description = "GCP Authentication token."
    type        = string
}


variable "name" {
    description = "Name of the image."
    type        = string
}

variable "tag" {
    description = "Image tag."
    type        = string
    default     = "latest"
}

variable "context" {
    description = <<EOF
        A build’s context is the set of files located in the specified PATH or
        URL. The build process can refer to any of the files in the context.
        For example, your build can use a COPY instruction to reference a file
        in the context.
    EOF
    type        = string
}

variable "build_platform" {
    description = "Architecture to build the image for. Defaults to 'linux/amd64'."
    type = string
    default = "linux/amd64"
}

variable "cloud_build" {
    description = "If true, run the image build on Cloud Build, otherwise run locally."
    type = bool
    default = true
}
