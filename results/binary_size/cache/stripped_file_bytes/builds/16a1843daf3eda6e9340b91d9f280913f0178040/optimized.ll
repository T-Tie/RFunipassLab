; ModuleID = '<stdin>'
source_filename = "/tmp/tmp9wrtt962.cpp"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

module asm ".globl _ZSt21ios_base_library_initv"

%"class.std::basic_istream" = type { ptr, i64, %"class.std::basic_ios" }
%"class.std::basic_ios" = type { %"class.std::ios_base", ptr, i8, i8, ptr, ptr, ptr, ptr }
%"class.std::ios_base" = type { ptr, i64, i64, i32, i32, i32, ptr, %"struct.std::ios_base::_Words", [8 x %"struct.std::ios_base::_Words"], i32, ptr, %"class.std::locale" }
%"struct.std::ios_base::_Words" = type { ptr, i64 }
%"class.std::locale" = type { ptr }
%"class.std::basic_ostream" = type { ptr, %"class.std::basic_ios" }

@_ZSt3cin = external global %"class.std::basic_istream", align 8
@_ZSt4cout = external global %"class.std::basic_ostream", align 8

; Function Attrs: mustprogress norecurse uwtable
define dso_local noundef i32 @main() local_unnamed_addr #0 {
entry:
  %n = alloca i32, align 4
  %a = alloca [100 x [100 x i32]], align 16
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %n) #6
  call void @llvm.lifetime.start.p0(i64 40000, ptr nonnull %a) #6
  %call = call noundef nonnull align 8 dereferenceable(16) ptr @_ZNSirsERi(ptr noundef nonnull align 8 dereferenceable(16) @_ZSt3cin, ptr noundef nonnull align 4 dereferenceable(4) %n)
  %0 = load i32, ptr %n, align 4, !tbaa !5
  %cmp132 = icmp sgt i32 %0, 0
  br i1 %cmp132, label %for.cond1.preheader.lr.ph, label %for.end182

for.cond1.preheader.lr.ph:                        ; preds = %entry
  %add.ptr117 = getelementptr inbounds nuw i8, ptr %a, i64 404
  %scevgep = getelementptr inbounds nuw i8, ptr %a, i64 4
  %scevgep169 = getelementptr inbounds nuw i8, ptr %a, i64 8
  br label %for.cond1.preheader

for.cond1.preheader:                              ; preds = %for.cond1.preheader.lr.ph, %_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_.exit
  %1 = phi i32 [ %0, %for.cond1.preheader.lr.ph ], [ %35, %_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_.exit ]
  %p.0134 = phi i32 [ 0, %for.cond1.preheader.lr.ph ], [ %inc181, %_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_.exit ]
  %min.0133 = phi i32 [ undef, %for.cond1.preheader.lr.ph ], [ %min.1.lcssa, %_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_.exit ]
  %cmp293 = icmp sgt i32 %1, 0
  br i1 %cmp293, label %for.cond4.preheader, label %for.end177

for.cond14.preheader:                             ; preds = %for.inc11
  %cmp15126 = icmp sgt i32 %10, 1
  br i1 %cmp15126, label %for.cond17.preheader.preheader, label %for.end177

for.cond17.preheader.preheader:                   ; preds = %for.cond14.preheader
  %2 = add nsw i32 %10, -2
  %3 = zext nneg i32 %2 to i64
  %4 = add nsw i32 %10, -1
  %5 = zext i32 %4 to i64
  %6 = zext nneg i32 %10 to i64
  br label %for.cond17.preheader

for.cond4.preheader:                              ; preds = %for.cond1.preheader, %for.inc11
  %7 = phi i32 [ %10, %for.inc11 ], [ %1, %for.cond1.preheader ]
  %indvars.iv138 = phi i64 [ %indvars.iv.next139, %for.inc11 ], [ 0, %for.cond1.preheader ]
  %cmp591 = icmp sgt i32 %7, 0
  br i1 %cmp591, label %for.body6.lr.ph, label %for.cond4.preheader.for.inc11_crit_edge

for.cond4.preheader.for.inc11_crit_edge:          ; preds = %for.cond4.preheader
  %.pre = sext i32 %7 to i64
  br label %for.inc11

for.body6.lr.ph:                                  ; preds = %for.cond4.preheader
  %add.ptr = getelementptr inbounds nuw [100 x i32], ptr %a, i64 %indvars.iv138
  br label %for.body6

for.body6:                                        ; preds = %for.body6.lr.ph, %for.body6
  %indvars.iv = phi i64 [ 0, %for.body6.lr.ph ], [ %indvars.iv.next, %for.body6 ]
  %add.ptr9 = getelementptr inbounds nuw i32, ptr %add.ptr, i64 %indvars.iv
  %call10 = call noundef nonnull align 8 dereferenceable(16) ptr @_ZNSirsERi(ptr noundef nonnull align 8 dereferenceable(16) @_ZSt3cin, ptr noundef nonnull align 4 dereferenceable(4) %add.ptr9)
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  %8 = load i32, ptr %n, align 4, !tbaa !5
  %9 = sext i32 %8 to i64
  %cmp5 = icmp slt i64 %indvars.iv.next, %9
  br i1 %cmp5, label %for.body6, label %for.inc11, !llvm.loop !9

for.inc11:                                        ; preds = %for.body6, %for.cond4.preheader.for.inc11_crit_edge
  %.pre-phi = phi i64 [ %.pre, %for.cond4.preheader.for.inc11_crit_edge ], [ %9, %for.body6 ]
  %10 = phi i32 [ %7, %for.cond4.preheader.for.inc11_crit_edge ], [ %8, %for.body6 ]
  %indvars.iv.next139 = add nuw nsw i64 %indvars.iv138, 1
  %cmp2 = icmp slt i64 %indvars.iv.next139, %.pre-phi
  br i1 %cmp2, label %for.cond4.preheader, label %for.cond14.preheader, !llvm.loop !12

for.cond14.loopexit:                              ; preds = %for.cond154.for.inc173_crit_edge.us, %for.end114
  %indvar.next = add nuw nsw i64 %indvar, 1
  %indvars.iv.next195 = add nsw i64 %indvars.iv194, -1
  %exitcond202.not = icmp eq i64 %indvar.next, %5
  br i1 %exitcond202.not, label %for.end177, label %for.cond17.preheader, !llvm.loop !14

for.cond17.preheader:                             ; preds = %for.cond17.preheader.preheader, %for.cond14.loopexit
  %indvars.iv196 = phi i64 [ %6, %for.cond17.preheader.preheader ], [ %indvars.iv.next197, %for.cond14.loopexit ]
  %indvars.iv194 = phi i64 [ %5, %for.cond17.preheader.preheader ], [ %indvars.iv.next195, %for.cond14.loopexit ]
  %indvar = phi i64 [ 0, %for.cond17.preheader.preheader ], [ %indvar.next, %for.cond14.loopexit ]
  %sum.0129 = phi i32 [ 0, %for.cond17.preheader.preheader ], [ %add, %for.cond14.loopexit ]
  %min.1127 = phi i32 [ %min.0133, %for.cond17.preheader.preheader ], [ %min.7, %for.cond14.loopexit ]
  %11 = xor i64 %indvar, -1
  %12 = add nsw i64 %11, %5
  %13 = sub nsw i64 %3, %indvar
  %14 = shl i64 %13, 2
  %min.iters.check210 = icmp ult i64 %indvars.iv196, 4
  %n.vec213 = and i64 %indvars.iv196, -4
  %cmp.n219 = icmp eq i64 %indvars.iv196, %n.vec213
  br label %for.cond20.preheader

for.cond20.preheader:                             ; preds = %for.cond17.preheader, %for.inc61
  %indvars.iv149 = phi i64 [ 0, %for.cond17.preheader ], [ %indvars.iv.next150, %for.inc61 ]
  %min.2101 = phi i32 [ %min.1127, %for.cond17.preheader ], [ %min.4, %for.inc61 ]
  %add.ptr30 = getelementptr inbounds nuw [100 x i32], ptr %a, i64 %indvars.iv149
  br label %for.body22

for.body47.lr.ph:                                 ; preds = %for.inc42
  br i1 %min.iters.check210, label %for.body47.preheader, label %vector.ph211

vector.ph211:                                     ; preds = %for.body47.lr.ph
  %broadcast.splatinsert = insertelement <4 x i32> poison, i32 %min.4, i64 0
  %broadcast.splat = shufflevector <4 x i32> %broadcast.splatinsert, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body214

vector.body214:                                   ; preds = %vector.body214, %vector.ph211
  %index215 = phi i64 [ 0, %vector.ph211 ], [ %index.next217, %vector.body214 ]
  %15 = getelementptr inbounds nuw i32, ptr %add.ptr30, i64 %index215
  %wide.load216 = load <4 x i32>, ptr %15, align 16, !tbaa !5
  %16 = sub nsw <4 x i32> %wide.load216, %broadcast.splat
  store <4 x i32> %16, ptr %15, align 16, !tbaa !5
  %index.next217 = add nuw i64 %index215, 4
  %17 = icmp eq i64 %index.next217, %n.vec213
  br i1 %17, label %middle.block218, label %vector.body214, !llvm.loop !15

middle.block218:                                  ; preds = %vector.body214
  br i1 %cmp.n219, label %for.inc61, label %for.body47.preheader

for.body47.preheader:                             ; preds = %for.body47.lr.ph, %middle.block218
  %indvars.iv144.ph = phi i64 [ 0, %for.body47.lr.ph ], [ %n.vec213, %middle.block218 ]
  br label %for.body47

for.body22:                                       ; preds = %for.cond20.preheader, %for.inc42
  %indvars.iv141 = phi i64 [ 0, %for.cond20.preheader ], [ %indvars.iv.next142, %for.inc42 ]
  %min.396 = phi i32 [ %min.2101, %for.cond20.preheader ], [ %min.4, %for.inc42 ]
  %cmp23 = icmp eq i64 %indvars.iv141, 0
  br i1 %cmp23, label %if.then, label %if.else

if.then:                                          ; preds = %for.body22
  %18 = load i32, ptr %add.ptr30, align 16, !tbaa !5
  br label %for.inc42

if.else:                                          ; preds = %for.body22
  %add.ptr33 = getelementptr inbounds nuw i32, ptr %add.ptr30, i64 %indvars.iv141
  %19 = load i32, ptr %add.ptr33, align 4, !tbaa !5
  %spec.select = call i32 @llvm.smin.i32(i32 %19, i32 %min.396)
  br label %for.inc42

for.inc42:                                        ; preds = %if.else, %if.then
  %min.4 = phi i32 [ %18, %if.then ], [ %spec.select, %if.else ]
  %indvars.iv.next142 = add nuw nsw i64 %indvars.iv141, 1
  %exitcond.not = icmp eq i64 %indvars.iv.next142, %indvars.iv196
  br i1 %exitcond.not, label %for.body47.lr.ph, label %for.body22, !llvm.loop !18

for.body47:                                       ; preds = %for.body47.preheader, %for.body47
  %indvars.iv144 = phi i64 [ %indvars.iv.next145, %for.body47 ], [ %indvars.iv144.ph, %for.body47.preheader ]
  %add.ptr52 = getelementptr inbounds nuw i32, ptr %add.ptr30, i64 %indvars.iv144
  %20 = load i32, ptr %add.ptr52, align 4, !tbaa !5
  %sub = sub nsw i32 %20, %min.4
  store i32 %sub, ptr %add.ptr52, align 4, !tbaa !5
  %indvars.iv.next145 = add nuw nsw i64 %indvars.iv144, 1
  %exitcond148.not = icmp eq i64 %indvars.iv.next145, %indvars.iv196
  br i1 %exitcond148.not, label %for.inc61, label %for.body47, !llvm.loop !19

for.inc61:                                        ; preds = %for.body47, %middle.block218
  %indvars.iv.next150 = add nuw nsw i64 %indvars.iv149, 1
  %exitcond153.not = icmp eq i64 %indvars.iv.next150, %indvars.iv196
  br i1 %exitcond153.not, label %for.cond67.preheader, label %for.cond20.preheader, !llvm.loop !20

for.cond67.preheader:                             ; preds = %for.inc61, %for.inc112
  %indvars.iv164 = phi i64 [ %indvars.iv.next165, %for.inc112 ], [ 0, %for.inc61 ]
  %min.5112 = phi i32 [ %min.7, %for.inc112 ], [ %min.4, %for.inc61 ]
  %invariant.gep = getelementptr inbounds nuw i32, ptr %a, i64 %indvars.iv164
  br label %for.body69

for.body69:                                       ; preds = %for.cond67.preheader, %for.inc92
  %indvars.iv154 = phi i64 [ 0, %for.cond67.preheader ], [ %indvars.iv.next155, %for.inc92 ]
  %min.6104 = phi i32 [ %min.5112, %for.cond67.preheader ], [ %min.7, %for.inc92 ]
  %cmp70 = icmp eq i64 %indvars.iv154, 0
  br i1 %cmp70, label %if.then71, label %if.else77

if.then71:                                        ; preds = %for.body69
  %21 = load i32, ptr %invariant.gep, align 4, !tbaa !5
  br label %for.inc92

if.else77:                                        ; preds = %for.body69
  %gep = getelementptr inbounds nuw [100 x i32], ptr %invariant.gep, i64 %indvars.iv154
  %22 = load i32, ptr %gep, align 4, !tbaa !5
  %spec.select90 = call i32 @llvm.smin.i32(i32 %22, i32 %min.6104)
  br label %for.inc92

for.inc92:                                        ; preds = %if.else77, %if.then71
  %min.7 = phi i32 [ %21, %if.then71 ], [ %spec.select90, %if.else77 ]
  %indvars.iv.next155 = add nuw nsw i64 %indvars.iv154, 1
  %exitcond158.not = icmp eq i64 %indvars.iv.next155, %indvars.iv196
  br i1 %exitcond158.not, label %for.body97, label %for.body69, !llvm.loop !21

for.body97:                                       ; preds = %for.inc92, %for.body97
  %indvars.iv159 = phi i64 [ %indvars.iv.next160, %for.body97 ], [ 0, %for.inc92 ]
  %gep110 = getelementptr inbounds nuw [100 x i32], ptr %invariant.gep, i64 %indvars.iv159
  %23 = load i32, ptr %gep110, align 4, !tbaa !5
  %sub103 = sub nsw i32 %23, %min.7
  store i32 %sub103, ptr %gep110, align 4, !tbaa !5
  %indvars.iv.next160 = add nuw nsw i64 %indvars.iv159, 1
  %exitcond163.not = icmp eq i64 %indvars.iv.next160, %indvars.iv196
  br i1 %exitcond163.not, label %for.inc112, label %for.body97, !llvm.loop !22

for.inc112:                                       ; preds = %for.body97
  %indvars.iv.next165 = add nuw nsw i64 %indvars.iv164, 1
  %exitcond168.not = icmp eq i64 %indvars.iv.next165, %indvars.iv196
  br i1 %exitcond168.not, label %for.end114, label %for.cond67.preheader, !llvm.loop !23

for.end114:                                       ; preds = %for.inc112
  %24 = load i32, ptr %add.ptr117, align 4, !tbaa !5
  %add = add nsw i32 %24, %sum.0129
  %indvars.iv.next197 = add nsw i64 %indvars.iv196, -1
  %cmp120115 = icmp samesign ugt i64 %indvars.iv196, 2
  br i1 %cmp120115, label %for.body137.preheader, label %for.cond14.loopexit

for.body137.preheader:                            ; preds = %for.end114
  call void @llvm.memmove.p0.p0.i64(ptr nonnull align 4 %scevgep, ptr nonnull align 8 %scevgep169, i64 %14, i1 false), !tbaa !5
  br label %for.body137

for.cond154.preheader.us:                         ; preds = %for.cond154.preheader.us.preheader, %for.cond154.for.inc173_crit_edge.us
  %indvars.iv189 = phi i64 [ %indvars.iv.next190, %for.cond154.for.inc173_crit_edge.us ], [ 1, %for.cond154.preheader.us.preheader ]
  %add.ptr159.us = getelementptr inbounds nuw [100 x i32], ptr %a, i64 %indvars.iv189
  %invariant.gep122.us = getelementptr inbounds nuw i8, ptr %add.ptr159.us, i64 404
  br i1 %min.iters.check, label %for.body157.us.preheader, label %vector.body

vector.body:                                      ; preds = %for.cond154.preheader.us, %vector.body
  %index = phi i64 [ %index.next, %vector.body ], [ 0, %for.cond154.preheader.us ]
  %offset.idx = or disjoint i64 %index, 1
  %25 = getelementptr inbounds nuw i32, ptr %invariant.gep122.us, i64 %offset.idx
  %wide.load = load <4 x i32>, ptr %25, align 8, !tbaa !5
  %26 = getelementptr inbounds nuw i32, ptr %add.ptr159.us, i64 %offset.idx
  store <4 x i32> %wide.load, ptr %26, align 4, !tbaa !5
  %index.next = add nuw i64 %index, 4
  %27 = icmp eq i64 %index.next, %n.vec
  br i1 %27, label %middle.block, label %vector.body, !llvm.loop !24

middle.block:                                     ; preds = %vector.body
  br i1 %cmp.n, label %for.cond154.for.inc173_crit_edge.us, label %for.body157.us.preheader

for.body157.us.preheader:                         ; preds = %for.cond154.preheader.us, %middle.block
  %indvars.iv184.ph = phi i64 [ 1, %for.cond154.preheader.us ], [ %30, %middle.block ]
  br label %for.body157.us

for.body157.us:                                   ; preds = %for.body157.us.preheader, %for.body157.us
  %indvars.iv184 = phi i64 [ %indvars.iv.next185, %for.body157.us ], [ %indvars.iv184.ph, %for.body157.us.preheader ]
  %gep123.us = getelementptr inbounds nuw i32, ptr %invariant.gep122.us, i64 %indvars.iv184
  %28 = load i32, ptr %gep123.us, align 4, !tbaa !5
  %add.ptr169.us = getelementptr inbounds nuw i32, ptr %add.ptr159.us, i64 %indvars.iv184
  store i32 %28, ptr %add.ptr169.us, align 4, !tbaa !5
  %indvars.iv.next185 = add nuw nsw i64 %indvars.iv184, 1
  %exitcond188.not = icmp eq i64 %indvars.iv.next185, %indvars.iv194
  br i1 %exitcond188.not, label %for.cond154.for.inc173_crit_edge.us, label %for.body157.us, !llvm.loop !25

for.cond154.for.inc173_crit_edge.us:              ; preds = %for.body157.us, %middle.block
  %indvars.iv.next190 = add nuw nsw i64 %indvars.iv189, 1
  %exitcond193.not = icmp eq i64 %indvars.iv.next190, %indvars.iv194
  br i1 %exitcond193.not, label %for.cond14.loopexit, label %for.cond154.preheader.us, !llvm.loop !26

for.body137:                                      ; preds = %for.body137.preheader, %for.body137
  %indvars.iv173 = phi i64 [ 1, %for.body137.preheader ], [ %indvars.iv.next174, %for.body137 ]
  %add.ptr139 = getelementptr inbounds nuw [100 x i32], ptr %a, i64 %indvars.iv173
  %add.ptr140 = getelementptr inbounds nuw i8, ptr %add.ptr139, i64 400
  %29 = load i32, ptr %add.ptr140, align 16, !tbaa !5
  store i32 %29, ptr %add.ptr139, align 16, !tbaa !5
  %indvars.iv.next174 = add nuw nsw i64 %indvars.iv173, 1
  %exitcond179.not = icmp eq i64 %indvars.iv.next174, %indvars.iv194
  br i1 %exitcond179.not, label %for.cond154.preheader.us.preheader, label %for.body137, !llvm.loop !27

for.cond154.preheader.us.preheader:               ; preds = %for.body137
  %min.iters.check = icmp ult i64 %12, 4
  %n.vec = and i64 %12, -4
  %30 = or disjoint i64 %n.vec, 1
  %cmp.n = icmp eq i64 %12, %n.vec
  br label %for.cond154.preheader.us

for.end177:                                       ; preds = %for.cond14.loopexit, %for.cond1.preheader, %for.cond14.preheader
  %min.1.lcssa = phi i32 [ %min.0133, %for.cond14.preheader ], [ %min.0133, %for.cond1.preheader ], [ %min.7, %for.cond14.loopexit ]
  %sum.0.lcssa = phi i32 [ 0, %for.cond14.preheader ], [ 0, %for.cond1.preheader ], [ %add, %for.cond14.loopexit ]
  %call178 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEi(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, i32 noundef %sum.0.lcssa)
  %vtable.i = load ptr, ptr %call178, align 8, !tbaa !28
  %vbase.offset.ptr.i = getelementptr i8, ptr %vtable.i, i64 -24
  %vbase.offset.i = load i64, ptr %vbase.offset.ptr.i, align 8
  %add.ptr.i = getelementptr inbounds i8, ptr %call178, i64 %vbase.offset.i
  %_M_ctype.i.i = getelementptr inbounds nuw i8, ptr %add.ptr.i, i64 240
  %31 = load ptr, ptr %_M_ctype.i.i, align 8, !tbaa !30
  %tobool.not.i.i.i = icmp eq ptr %31, null
  br i1 %tobool.not.i.i.i, label %if.then.i.i.i, label %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i

if.then.i.i.i:                                    ; preds = %for.end177
  call void @_ZSt16__throw_bad_castv() #7
  unreachable

_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i: ; preds = %for.end177
  %_M_widen_ok.i.i.i = getelementptr inbounds nuw i8, ptr %31, i64 56
  %32 = load i8, ptr %_M_widen_ok.i.i.i, align 8, !tbaa !48
  %tobool.not.i1.i.i = icmp eq i8 %32, 0
  br i1 %tobool.not.i1.i.i, label %if.end.i.i.i, label %if.then.i2.i.i

if.then.i2.i.i:                                   ; preds = %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i
  %arrayidx.i.i.i = getelementptr inbounds nuw i8, ptr %31, i64 67
  %33 = load i8, ptr %arrayidx.i.i.i, align 1, !tbaa !54
  br label %_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_.exit

if.end.i.i.i:                                     ; preds = %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i
  call void @_ZNKSt5ctypeIcE13_M_widen_initEv(ptr noundef nonnull align 8 dereferenceable(570) %31)
  %vtable.i.i.i = load ptr, ptr %31, align 8, !tbaa !28
  %vfn.i.i.i = getelementptr inbounds nuw i8, ptr %vtable.i.i.i, i64 48
  %34 = load ptr, ptr %vfn.i.i.i, align 8
  %call.i.i.i = call noundef signext i8 %34(ptr noundef nonnull align 8 dereferenceable(570) %31, i8 noundef signext 10)
  br label %_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_.exit

_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_.exit: ; preds = %if.then.i2.i.i, %if.end.i.i.i
  %retval.0.i.i.i = phi i8 [ %33, %if.then.i2.i.i ], [ %call.i.i.i, %if.end.i.i.i ]
  %call1.i = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8) %call178, i8 noundef signext %retval.0.i.i.i)
  %call.i.i = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo5flushEv(ptr noundef nonnull align 8 dereferenceable(8) %call1.i)
  %inc181 = add nuw nsw i32 %p.0134, 1
  %35 = load i32, ptr %n, align 4, !tbaa !5
  %cmp = icmp slt i32 %inc181, %35
  br i1 %cmp, label %for.cond1.preheader, label %for.end182, !llvm.loop !55

for.end182:                                       ; preds = %_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_.exit, %entry
  call void @llvm.lifetime.end.p0(i64 40000, ptr nonnull %a) #6
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %n) #6
  ret i32 0
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr captures(none)) #1

declare noundef nonnull align 8 dereferenceable(16) ptr @_ZNSirsERi(ptr noundef nonnull align 8 dereferenceable(16), ptr noundef nonnull align 4 dereferenceable(4)) local_unnamed_addr #2

declare noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEi(ptr noundef nonnull align 8 dereferenceable(8), i32 noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr captures(none)) #1

declare noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8), i8 noundef signext) local_unnamed_addr #2

declare noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo5flushEv(ptr noundef nonnull align 8 dereferenceable(8)) local_unnamed_addr #2

; Function Attrs: noreturn
declare void @_ZSt16__throw_bad_castv() local_unnamed_addr #3

declare void @_ZNKSt5ctypeIcE13_M_widen_initEv(ptr noundef nonnull align 8 dereferenceable(570)) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smin.i32(i32, i32) #4

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memmove.p0.p0.i64(ptr writeonly captures(none), ptr readonly captures(none), i64, i1 immarg) #5

attributes #0 = { mustprogress norecurse uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { noreturn "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #5 = { nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #6 = { nounwind }
attributes #7 = { noreturn }

!llvm.module.flags = !{!0, !1, !2, !3}
!llvm.ident = !{!4}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"PIE Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{!"clang version 21.1.8 (https://github.com/llvm/llvm-project.git 2078da43e25a4623cab2d0d60decddf709aaea28)"}
!5 = !{!6, !6, i64 0}
!6 = !{!"int", !7, i64 0}
!7 = !{!"omnipotent char", !8, i64 0}
!8 = !{!"Simple C++ TBAA"}
!9 = distinct !{!9, !10, !11}
!10 = !{!"llvm.loop.mustprogress"}
!11 = !{!"llvm.loop.unroll.disable"}
!12 = distinct !{!12, !10, !11, !13}
!13 = !{!"llvm.loop.unswitch.partial.disable"}
!14 = distinct !{!14, !10, !11}
!15 = distinct !{!15, !10, !11, !16, !17}
!16 = !{!"llvm.loop.isvectorized", i32 1}
!17 = !{!"llvm.loop.unroll.runtime.disable"}
!18 = distinct !{!18, !10, !11}
!19 = distinct !{!19, !10, !11, !16}
!20 = distinct !{!20, !10, !11}
!21 = distinct !{!21, !10, !11}
!22 = distinct !{!22, !10, !11}
!23 = distinct !{!23, !10, !11}
!24 = distinct !{!24, !10, !11, !16, !17}
!25 = distinct !{!25, !10, !11, !16}
!26 = distinct !{!26, !10, !11}
!27 = distinct !{!27, !10, !11}
!28 = !{!29, !29, i64 0}
!29 = !{!"vtable pointer", !8, i64 0}
!30 = !{!31, !45, i64 240}
!31 = !{!"_ZTSSt9basic_iosIcSt11char_traitsIcEE", !32, i64 0, !42, i64 216, !7, i64 224, !43, i64 225, !44, i64 232, !45, i64 240, !46, i64 248, !47, i64 256}
!32 = !{!"_ZTSSt8ios_base", !33, i64 8, !33, i64 16, !34, i64 24, !35, i64 28, !35, i64 32, !36, i64 40, !38, i64 48, !7, i64 64, !6, i64 192, !39, i64 200, !40, i64 208}
!33 = !{!"long", !7, i64 0}
!34 = !{!"_ZTSSt13_Ios_Fmtflags", !7, i64 0}
!35 = !{!"_ZTSSt12_Ios_Iostate", !7, i64 0}
!36 = !{!"p1 _ZTSNSt8ios_base14_Callback_listE", !37, i64 0}
!37 = !{!"any pointer", !7, i64 0}
!38 = !{!"_ZTSNSt8ios_base6_WordsE", !37, i64 0, !33, i64 8}
!39 = !{!"p1 _ZTSNSt8ios_base6_WordsE", !37, i64 0}
!40 = !{!"_ZTSSt6locale", !41, i64 0}
!41 = !{!"p1 _ZTSNSt6locale5_ImplE", !37, i64 0}
!42 = !{!"p1 _ZTSSo", !37, i64 0}
!43 = !{!"bool", !7, i64 0}
!44 = !{!"p1 _ZTSSt15basic_streambufIcSt11char_traitsIcEE", !37, i64 0}
!45 = !{!"p1 _ZTSSt5ctypeIcE", !37, i64 0}
!46 = !{!"p1 _ZTSSt7num_putIcSt19ostreambuf_iteratorIcSt11char_traitsIcEEE", !37, i64 0}
!47 = !{!"p1 _ZTSSt7num_getIcSt19istreambuf_iteratorIcSt11char_traitsIcEEE", !37, i64 0}
!48 = !{!49, !7, i64 56}
!49 = !{!"_ZTSSt5ctypeIcE", !50, i64 0, !51, i64 16, !43, i64 24, !52, i64 32, !52, i64 40, !53, i64 48, !7, i64 56, !7, i64 57, !7, i64 313, !7, i64 569}
!50 = !{!"_ZTSNSt6locale5facetE", !6, i64 8}
!51 = !{!"p1 _ZTS15__locale_struct", !37, i64 0}
!52 = !{!"p1 int", !37, i64 0}
!53 = !{!"p1 short", !37, i64 0}
!54 = !{!7, !7, i64 0}
!55 = distinct !{!55, !10, !11}
