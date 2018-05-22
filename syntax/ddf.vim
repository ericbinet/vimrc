" Vim syntax file
" Language: DDF Syntax
" Maintainer: Eric Binet

if exists("b:current_syntax")
  finish
endif

syn match ddfWord /\<\w\+\>/
syn keyword Keyword entity class data input owned meta enum struct import module namespace component
syn keyword Type string bool int s8 s16 s32 s64 uint u8 u16 u32 u64 Vec2 Vec3 Vec4 AxisAlignedBox LinearTransform Mat4 Quat Guid SHA1 Object file type resource delegate event float double Realm nextGroup=ddfWord skipWhite
syn match ddfParameter /\<\w\+\>/ contained
syn match ddfAttribute /\<\h\w*\>/ contained

syn match String /"[^"]*"/
syn match Number /\<\d\+\>/
syn match Number /\<0x\x\+\>/
syn match Float /\<[-+]\?\d\+\.\d*f\?\>/
syn keyword Boolean true false
syn match Include /#include/
syn match Operator /=/

syn region ddfParameteredAttribute matchgroup=Operator start=/(/ end=/)/ contains=ddfParameter,String,Float,Number,Boolean,Operator contained
syn region ddfAttributes matchgroup=Operator start=/\[/ end=/\]/ contains=ddfParameteredAttribute,ddfAttribute

hi link ddfParameter NONE
hi link ddfAttribute Identifier
hi link ddfWord NONE

let b:current_syntax = "ddf"
