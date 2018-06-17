---
title: "{{ replace .Name "-" " " | title }}"
date: {{ .Date }}
description: ""
categories:
tags:
draft: true
---

:lang: ja
:toc: left
:toclevels: 3
:toc-title: 目次
:sectnums:
:sectnumlevels: 4
:sectlinks:
:chapter-label:
:imagesdir: /images
:imagesoutdir: ./static/images
:example-caption: 例
:table-caption: 表
:figure-caption: 図
:icons: font
:source-highlighter: coderay
:coderay-linenums-mode: inline
:stem: latexmath
:author: IWASE Shigeaki
:revnumber: 0.1
:revdate: {{ .Date }}

= {{ replace .Name "-" " " | title }}
