parameter
{
  position = {
    character = 6,
    line = 13
  },
  textDocument = {
  uri = "file:///Users/username/lsp_test/go/interface.go"
  }
}


--[[ -- incomming/outgoing


dir from result { {
    from = {
      detail = "command-line-arguments • interface.go",
      kind = 12,
      name = "m2",
      range = {
        end = {
          character = 7,
          line = 39
        },
        start = {
          character = 5,
          line = 39
        }
      },
      selectionRange = {
        end = {
          character = 7,
          line = 39
        },
        start = {
          character = 5,
          line = 39
        }
      },
      uri = "file:///Users/username/lsp-test/go/interface.go"
    },
    fromRanges = { {
        end = {
          character = 8,
          line = 40
        },
        start = {
          character = 1,
          line = 40
        }
      } }
  }, {
    from = {
      detail = "command-line-arguments • interface.go",
      kind = 12,
      name = "main",
      range = {
        end = {
          character = 9,
          line = 43
        },
        start = {
          character = 5,
          line = 43
        }
      },
      selectionRange = {
        end = {
          character = 9,
          line = 43
        },
        start = {
          character = 5,
          line = 43
        }
      },
      uri = "file:///Users/username/lsp-test/go/interface.go"
    },
    fromRanges = { {
        end = {
          character = 11,
          line = 47
        },
        start = {
          character = 4,
          line = 47
        }
      }, {
        end = {
          character = 11,
          line = 48
        },
        start = {
          character = 4,
          line = 48
        }
      } }
  } }

--]]





-- [[ locations/reference from lsp
{ {
    range = {
     ["end"] = {
        character = 20,
        line = 26
      },
      start = {
        character = 16,
        line = 26
      }
    },
    uri = "file:///Users/username/lsp-test/go/interface.go"
  }, {
    range = {
      ["end"] = {
        character = 22,
        line = 35
      },
      start = {
        character = 18,
        line = 35
      }
    },
    uri = "file:///Users/username/lsp-test/go/interface.go"
  } }
--]]


-- definition

definition.lua:9: { {
    range = {
      end = {
        character = 12,
        line = 33
      },
      start = {
        character = 5,
        line = 33
      }
    },
    uri = "file:///Users/username/lsp-test/go/interface.go"
  } }


  -- def preview

  def-preview {
  [3] = {
    result = { {
        range = {
          end = {
            character = 12,
            line = 33
          },
          start = {
            character = 5,
            line = 33
          }
        },
        uri = "file:///Users/username/lsp-test/go/interface.go"
      } }
  }
}


-- symbol
{ {
    containerName = "command-line-arguments",
    kind = 11,
    location = {
      range = {
        end = {
          character = 13,
          line = 7
        },
        start = {
          character = 5,
          line = 7
        }
      },
      uri = "file:///Users/username/lsp-test/go/interface.go"
    },
    name = "command-line-arguments.geometry"
  }, {
    containerName = "command-line-arguments",
    kind = 23,
    location = {
      range = {
        end = {
          character = 9,
          line = 12
        },
        start = {
          character = 5,
          line = 12
        }
      },
      uri = "file:///Users/username/lsp-test/go/interface.go"
    },
    name = "command-line-arguments.rect"
  }, {
    containerName = "command-line-arguments",
    kind = 12,
    location = {
      range = {
        end = {
          character = 9,
          line = 43
        },
        start = {
          character = 5,
          line = 43
        }
      },
      uri = "file:///Users/username/lsp-test/go/interface.go"
    },
    name = "command-line-arguments.main"
  }, {
    containerName = "command-line-arguments",
    kind = 6,
    location = {
      range = {
        end = {
          character = 8,
          line = 8
        },
        start = {
          character = 4,
          line = 8
        }
      },
      uri = "file:///Users/username/lsp-test/go/interface.go"
    },
    name = "command-line-arguments.geometry.area"
  }, {
    containerName = "command-line-arguments",
    kind = 8,
    location = {
      range = {
        end = {
          character = 9,
          line = 13
        },
        start = {
          character = 4,
          line = 13
        }
      },
      uri = "file:///Users/username/lsp-test/go/interface.go"
    },
    name = "command-line-arguments.rect.width"
  }}


{
  diagnostics = { {
      code = "UnusedVar",
      codeDescription = {
        href = "https://pkg.go.dev/golang.org/x/tools/internal/typesinternal#UnusedVar"
      },
      message = "d declared but not used",
      range = {
        end = {
          character = 5,
          line = 46
        },
        start = {
          character = 4,
          line = 46
        }
      },
      severity = 1,
      source = "compiler"
    }, {
      code = "WrongArgCount",
      codeDescription = {
        href = "https://pkg.go.dev/golang.org/x/tools/internal/typesinternal#WrongArgCount"
      },
      message = "missing argument in conversion to circle",
      range = {
        end = {
          character = 17,
          line = 46
        },
        start = {
          character = 9,
          line = 46
        }
      },
      severity = 1,
      source = "compiler"
    } },
  uri = "file:///Users/username/lsp-test/go/interface.go"
}


-- range actions
 { {
    edit = {
      documentChanges = { {
          edits = { {
              newText = '\nimport (\n\t"fmt"\n\t"log"\n)\n',
              range = {
                end = {
                  character = 0,
                  line = 1
                },
                start = {
                  character = 0,
                  line = 1
                }
              }
            } },
          textDocument = {
            uri = "file:///Users/username/lsp_test/go/ref.go",
            version = 0
          }
        } }
    },
    kind = "source.organizeImports",
    title = "Organize Imports"
  }, {
    command = {
      arguments = { {
          Fix = "undeclared_name",
          Range = {
            end = {
              character = 20,
              line = 4
            },
            start = {
              character = 16,
              line = 4
            }
          },
          URI = "file:///Users/username/lsp_test/go/ref.go"
        } },
      command = "gopls.apply_fix",
      title = "undeclared name: rect"
    },
    diagnostics = { {
        code = "UndeclaredName",
        codeDescription = {
          href = "https://pkg.go.dev/golang.org/x/tools/internal/typesinternal#UndeclaredName"
        },
        message = "undeclared name: rect",
        range = {
          end = {
            character = 20,
            line = 4
          },
          start = {
            character = 16,
            line = 4
          }
        },
        severity = 1,
        source = "compiler",
        tags = { 1 }
      } },
    edit = {},
    kind = "quickfix",
    title = "undeclared name: rect"
  }, {
    command = {
      arguments = { {
          Fix = "extract_function",
          Range = {
            end = {
              character = 16,
              line = 6
            },
            start = {
              character = 0,
              line = 4
            }
          },
          URI = "file:///Users/username/lsp_test/go/ref.go"
        } },
      command = "gopls.apply_fix",
      title = "Extract to function"
    },
    edit = {},
    kind = "refactor.extract",
    title = "Extract to function"
  } }



  -- code action

  { {
    diagnostics = { {
        code = "UndeclaredName",
        codeDescription = {
          href = "https://pkg.go.dev/golang.org/x/tools/internal/typesinternal#UndeclaredName"
        },
        message = "undeclared name: log",
        range = {
          end = {
            character = 4,
            line = 6
          },
          start = {
            character = 1,
            line = 6
          }
        },
        severity = 1,
        source = "compiler"
      } },
    edit = {
      documentChanges = { {
          edits = { {
              newText = '\nimport "log"\n',
              range = {
                end = {
                  character = 0,
                  line = 1
                },
                start = {
                  character = 0,
                  line = 1
                }
              }
            } },
          textDocument = {
            uri = "file:///Users/username/lsp_test/go/ref.go",
            version = 0
          }
        } }
    },
    kind = "quickfix",
    title = 'Add import:  "log"'
  }, {
    edit = {
      documentChanges = { {
          edits = { {
              newText = '\nimport (\n\t"fmt"\n\t"log"\n)\n',
              range = {
                end = {
                  character = 0,
                  line = 1
                },
                start = {
                  character = 0,
                  line = 1
                }
              }
            } },
          textDocument = {
            uri = "file:///Users/username/lsp_test/go/ref.go",
            version = 0
          }
        } }
    },
    kind = "source.organizeImports",
    title = "Organize Imports"
  } }



  -- workspace symbols

{ {
    containerName = "std",
    kind = 5,
    location = {
      range = {
        end = {
          character = 44,
          line = 277
        },
        start = {
          character = 23,
          line = 277
        }
      },
      uri = "file:///Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/include/c%2B%2B/v1/mutex"
    },
    name = "recursive_timed_mutex"
  }, {
    containerName = "std::recursive_timed_mutex",
    kind = 9,
    location = {
      range = {
        end = {
          character = 25,
          line = 288
        },
        start = {
          character = 4,
          line = 288
        }
      },
      uri = "file:///Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/include/c%2B%2B/v1/mutex"
    },
    name = "recursive_timed_mutex"
  }, {
    containerName = "std::recursive_timed_mutex",
    kind = 9,
    location = {
      range = {
        end = {
          character = 26,
          line = 284
        },
        start = {
          character = 5,
          line = 284
        }
      },
      uri = "file:///Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/include/c%2B%2B/v1/mutex"
    },
    name = "recursive_timed_mutex"
  }, {
    containerName = "std",
    kind = 5,
    location = {
      range = {
        end = {
          character = 41,
          line = 683
        },
        start = {
          character = 27,
          line = 683
        }
      },
      uri = "file:///Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/include/c%2B%2B/v1/type_traits"
    },
    name = "remove_const_t"
  },}


-- doc symbols
{ {
    children = { {
        kind = 6,
        name = "area",
        range = {
          end = {
            character = 15,
            line = 8
          },
          start = {
            character = 1,
            line = 8
          }
        },
        selectionRange = {
          end = {
            character = 5,
            line = 8
          },
          start = {
            character = 1,
            line = 8
          }
        }
      }, {
        kind = 6,
        name = "perim",
        range = {
          end = {
            character = 16,
            line = 9
          },
          start = {
            character = 1,
            line = 9
          }
        },
        selectionRange = {
          end = {
            character = 6,
            line = 9
          },
          start = {
            character = 1,
            line = 9
          }
        }
      } },
    detail = "interface{...}",
    kind = 11,
    name = "geometry",
    range = {
      end = {
        character = 1,
        line = 10
      },
      start = {
        character = 5,
        line = 7
      }
    },
    selectionRange = {
      end = {
        character = 13,
        line = 7
      },
      start = {
        character = 5,
        line = 7
      }
    }
  }, {
    children = { {
        detail = "float64",
        kind = 8,
        name = "width",
        range = {
          end = {
            character = 22,
            line = 13
          },
          start = {
            character = 1,
            line = 13
          }
        },
        selectionRange = {
          end = {
            character = 6,
            line = 13
          },
          start = {
            character = 1,
            line = 13
          }
        }
      }, {
        detail = "float64",
        kind = 8,
        name = "height",
        range = {
          end = {
            character = 22,
            line = 13
          },
          start = {
            character = 1,
            line = 13
          }
        },
        selectionRange = {
          end = {
            character = 14,
            line = 13
          },
          start = {
            character = 8,
            line = 13
          }
        }
      } },
    detail = "struct{...}",
    kind = 23,
    name = "rect",
    range = {
      end = {
        character = 1,
        line = 14
      },
      start = {
        character = 5,
        line = 12
      }
    },
    selectionRange = {
      end = {
        character = 9,
        line = 12
      },
      start = {
        character = 5,
        line = 12
      }
    }
  }, {
    children = { {
        detail = "float64",
        kind = 8,
        name = "radius",
        range = {
          end = {
            character = 15,
            line = 17
          },
          start = {
            character = 1,
            line = 17
          }
        },
        selectionRange = {
          end = {
            character = 7,
            line = 17
          },
          start = {
            character = 1,
            line = 17
          }
        }
      } },
    detail = "struct{...}",
    kind = 23,
    name = "circle",
    range = {
      end = {
        character = 1,
        line = 18
      },
      start = {
        character = 5,
        line = 16
      }
    },
    selectionRange = {
      end = {
        character = 11,
        line = 16
      },
      start = {
        character = 5,
        line = 16
      }
    }
  }, {
    detail = "()",
    kind = 6,
    name = "(rect).area",
    range = {
      end = {
        character = 1,
        line = 22
      },
      start = {
        character = 0,
        line = 20
      }
    },
    selectionRange = {
      end = {
        character = 18,
        line = 20
      },
      start = {
        character = 14,
        line = 20
      }
    }
  }, {
    detail = "()",
    kind = 6,
    name = "(rect).perim",
    range = {
      end = {
        character = 1,
        line = 26
      },
      start = {
        character = 0,
        line = 24
      }
    },
    selectionRange = {
      end = {
        character = 19,
        line = 24
      },
      start = {
        character = 14,
        line = 24
      }
    }
  }, {
    detail = "()",
    kind = 6,
    name = "(circle).area",
    range = {
      end = {
        character = 1,
        line = 30
      },
      start = {
        character = 0,
        line = 28
      }
    },
    selectionRange = {
      end = {
        character = 20,
        line = 28
      },
      start = {
        character = 16,
        line = 28
      }
    }
  }, {
    detail = "()",
    kind = 6,
    name = "(circle).perim",
    range = {
      end = {
        character = 1,
        line = 34
      },
      start = {
        character = 0,
        line = 32
      }
    },
    selectionRange = {
      end = {
        character = 21,
        line = 32
      },
      start = {
        character = 16,
        line = 32
      }
    }
  }, {
    detail = "(g geometry)",
    kind = 12,
    name = "measure",
    range = {
      end = {
        character = 1,
        line = 40
      },
      start = {
        character = 0,
        line = 36
      }
    },
    selectionRange = {
      end = {
        character = 12,
        line = 36
      },
      start = {
        character = 5,
        line = 36
      }
    }
  }, {
    detail = "()",
    kind = 12,
    name = "m2",
    range = {
      end = {
        character = 1,
        line = 44
      },
      start = {
        character = 0,
        line = 42
      }
    },
    selectionRange = {
      end = {
        character = 7,
        line = 42
      },
      start = {
        character = 5,
        line = 42
      }
    }
  }, {
    detail = "()",
    kind = 12,
    name = "M2",
    range = {
      end = {
        character = 1,
        line = 48
      },
      start = {
        character = 0,
        line = 46
      }
    },
    selectionRange = {
      end = {
        character = 7,
        line = 46
      },
      start = {
        character = 5,
        line = 46
      }
    }
  }, {
    detail = "()",
    kind = 12,
    name = "main",
    range = {
      end = {
        character = 1,
        line = 57
      },
      start = {
        character = 0,
        line = 50
      }
    },
    selectionRange = {
      end = {
        character = 9,
        line = 50
      },
      start = {
        character = 5,
        line = 50
      }
    }
  } }


-- workspace request
{
  [2] = {
    result = { {
        kind = 13,
        location = {
          range = {
            end = {
              character = 7,
              line = 0
            },
            start = {
              character = 6,
              line = 0
            }
          },
          uri = "file:///usr/local/share/nvim/runtime/lua/vim/treesitter/query.lua"
        },
        name = "a",
        range = { 7, 7 }
      },{
        kind = 13,
        location = {
          range = {
            end = {
              character = 14,
              line = 1
            },
            start = {
              character = 6,
              line = 1
            }
          },
          uri = "file:///usr/local/share/nvim/runtime/lua/vim/treesitter/query.lua"
        },
        name = "language",
        range = { 25, 32 }
      },
    }}




-- get diagnostics response
{ {
    code = "UndeclaredName",
    codeDescription = {
      href = "https://pkg.go.dev/golang.org/x/tools/internal/typesinternal?utm_source=gopls#UndeclaredName"
    },
    col = 16,
    display_filename = "./interface.go",
    filename = "/Users/username/lsp_test/go/interface.go",
    lnum = 38,
    message = "undeclared name: geometry",
    range = {
      end = {
        character = 23,
        line = 37
      },
      start = {
        character = 15,
        line = 37
      }
    },
    severity = 1,
    source = "compiler",
    tags = { 1 },
    text = "🈲func measure(g geometry) int {📛undeclared name: geometry",
    uri = "file:///Users/username/lsp_test/go/interface.go"
  },{
    code = "UndeclaredName",
    codeDescription = {
      href = "https://pkg.go.dev/golang.org/x/tools/internal/typesinternal?utm_source=gopls#UndeclaredName"
    },
    col = 9,
    display_filename = "./interface.go",
    filename = "/Users/username/lsp_test/go/interface.go",
    lnum = 30,
    message = "undeclared name: circle",
    range = {
      end = {
        character = 14,
        line = 29
      },
      start = {
        character = 8,
        line = 29
      }
    },
    severity = 1,
    source = "compiler",
    tags = { 1 },
    text = "🈲func (c circle) area() float64 {📛undeclared name: circle",
    uri = "file:///Users/username/lsp_test/go/interface.go"
  }  }


-- code lens
{ {
    command = {
      arguments = { {
          URIs = { "file:///Users/username/lsp_test/go/go.mod" }
        } },
      command = "gopls.tidy",
      title = "Run go mod tidy"
    },
    range = {
      end = {
        character = 13,
        line = 0
      },
      start = {
        character = 0,
        line = 0
      }
    }
  }, {
    command = {
      arguments = { {
          URI = "file:///Users/username/lsp_test/go/go.mod"
        } },
      command = "gopls.vendor",
      title = "Create vendor directory"
    },
    range = {
      end = {
        character = 13,
        line = 0
      },
      start = {
        character = 0,
        line = 0
      }
    }
  }, {
    command = {
      arguments = { {
          Modules = { "github.com/containerd/containerd", "github.com/docker/docker", "github.com/docker/go-connections", "github.com/fatih/gomodifytags", "github.com/google/go-cmp", "github.com/moby/term", "github.com/morikuni/aec", "github.com/sirupsen/logrus", "github.com/sourcegraph/jsonrpc2", "golang.org/x/net", "golang.org/x/sys", "golang.org/x/text", "golang.org/x/time", "golang.org/x/tools", "google.golang.org/grpc" },
          URI = "file:///Users/username/lsp_test/go/go.mod"
        } },
      command = "gopls.check_upgrades",
      title = "Check for upgrades"
    },
    range = {
      end = {
        character = 1,
        line = 20
      },
      start = {
        character = 0,
        line = 4
      }
    }
  }, {
    command = {
      arguments = { {
          AddRequire = false,
          GoCmdArgs = { "-d", "-u", "-t", "./..." },
          URI = "file:///Users/username/lsp_test/go/go.mod"
        } },
      command = "gopls.upgrade_dependency",
      title = "Upgrade transitive dependencies"
    },
    range = {
      end = {
        character = 1,
        line = 20
      },
      start = {
        character = 0,
        line = 4
      }
    }
  }, {
    command = {
      arguments = { {
          AddRequire = false,
          GoCmdArgs = { "-d", "github.com/containerd/containerd", "github.com/docker/docker", "github.com/docker/go-connections", "github.com/fatih/gomodifytags", "github.com/google/go-cmp", "github.com/moby/term", "github.com/morikuni/aec", "github.com/sirupsen/logrus", "github.com/sourcegraph/jsonrpc2", "golang.org/x/net", "golang.org/x/sys", "golang.org/x/text", "golang.org/x/time", "golang.org/x/tools", "google.golang.org/grpc" },
          URI = "file:///Users/username/lsp_test/go/go.mod"
        } },
      command = "gopls.upgrade_dependency",
      title = "Upgrade direct dependencies"
    },
    range = {
      end = {
        character = 1,
        line = 20
      },
      start = {
        character = 0,
        line = 4
      }
    }
  } }
