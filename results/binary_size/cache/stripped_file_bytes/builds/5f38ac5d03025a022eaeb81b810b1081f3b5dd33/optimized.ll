; ModuleID = '<stdin>'
source_filename = "/tmp/tmpfx1tmoua.cpp"
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
@.str = private unnamed_addr constant [2 x i8] c" \00", align 1

; Function Attrs: mustprogress norecurse uwtable
define dso_local noundef i32 @main() local_unnamed_addr #0 {
entry:
  %x1 = alloca i32, align 4
  %x2 = alloca i32, align 4
  %y1 = alloca i32, align 4
  %y2 = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %x1) #6
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %x2) #6
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %y1) #6
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %y2) #6
  %call = call noundef nonnull align 8 dereferenceable(16) ptr @_ZNSirsERi(ptr noundef nonnull align 8 dereferenceable(16) @_ZSt3cin, ptr noundef nonnull align 4 dereferenceable(4) %x1)
  %call2 = call noundef nonnull align 8 dereferenceable(16) ptr @_ZNSirsERi(ptr noundef nonnull align 8 dereferenceable(16) %call, ptr noundef nonnull align 4 dereferenceable(4) %y1)
  %0 = load i32, ptr %x1, align 4, !tbaa !5
  %1 = zext i32 %0 to i64
  %2 = load i32, ptr %y1, align 4, !tbaa !5
  %3 = zext i32 %2 to i64
  %4 = call ptr @llvm.stacksave.p0()
  %5 = mul nuw i64 %3, %1
  %vla = alloca i32, i64 %5, align 16
  %6 = load i32, ptr %x1, align 4, !tbaa !5
  %cmp3.not.not43 = icmp sgt i32 %6, 0
  %7 = load i32, ptr %y1, align 4
  %8 = icmp sgt i32 %7, 0
  %or.cond102 = select i1 %cmp3.not.not43, i1 %8, i1 false
  br i1 %or.cond102, label %for.cond4.preheader, label %for.end13

for.cond4.preheader:                              ; preds = %entry, %for.inc11
  %9 = phi i32 [ %14, %for.inc11 ], [ %6, %entry ]
  %10 = phi i32 [ %15, %for.inc11 ], [ %7, %entry ]
  %indvars.iv70 = phi i64 [ %indvars.iv.next71, %for.inc11 ], [ 0, %entry ]
  %cmp6.not.not41 = icmp sgt i32 %10, 0
  br i1 %cmp6.not.not41, label %for.body7.lr.ph, label %for.inc11

for.body7.lr.ph:                                  ; preds = %for.cond4.preheader
  %11 = mul nuw nsw i64 %indvars.iv70, %3
  %arrayidx = getelementptr inbounds nuw i32, ptr %vla, i64 %11
  br label %for.body7

for.body7:                                        ; preds = %for.body7.lr.ph, %for.body7
  %indvars.iv = phi i64 [ 0, %for.body7.lr.ph ], [ %indvars.iv.next, %for.body7 ]
  %arrayidx9 = getelementptr inbounds nuw i32, ptr %arrayidx, i64 %indvars.iv
  %call10 = call noundef nonnull align 8 dereferenceable(16) ptr @_ZNSirsERi(ptr noundef nonnull align 8 dereferenceable(16) @_ZSt3cin, ptr noundef nonnull align 4 dereferenceable(4) %arrayidx9)
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  %12 = load i32, ptr %y1, align 4, !tbaa !5
  %13 = sext i32 %12 to i64
  %cmp6.not.not = icmp slt i64 %indvars.iv.next, %13
  br i1 %cmp6.not.not, label %for.body7, label %for.inc11.loopexit, !llvm.loop !9

for.inc11.loopexit:                               ; preds = %for.body7
  %.pre = load i32, ptr %x1, align 4, !tbaa !5
  br label %for.inc11

for.inc11:                                        ; preds = %for.inc11.loopexit, %for.cond4.preheader
  %14 = phi i32 [ %.pre, %for.inc11.loopexit ], [ %9, %for.cond4.preheader ]
  %15 = phi i32 [ %12, %for.inc11.loopexit ], [ %10, %for.cond4.preheader ]
  %indvars.iv.next71 = add nuw nsw i64 %indvars.iv70, 1
  %16 = sext i32 %14 to i64
  %cmp3.not.not = icmp slt i64 %indvars.iv.next71, %16
  br i1 %cmp3.not.not, label %for.cond4.preheader, label %for.end13, !llvm.loop !12

for.end13:                                        ; preds = %for.inc11, %entry
  %call14 = call noundef nonnull align 8 dereferenceable(16) ptr @_ZNSirsERi(ptr noundef nonnull align 8 dereferenceable(16) @_ZSt3cin, ptr noundef nonnull align 4 dereferenceable(4) %x2)
  %call15 = call noundef nonnull align 8 dereferenceable(16) ptr @_ZNSirsERi(ptr noundef nonnull align 8 dereferenceable(16) %call14, ptr noundef nonnull align 4 dereferenceable(4) %y2)
  %17 = load i32, ptr %x2, align 4, !tbaa !5
  %18 = zext i32 %17 to i64
  %19 = load i32, ptr %y2, align 4, !tbaa !5
  %20 = zext i32 %19 to i64
  %21 = mul nuw i64 %20, %18
  %vla16 = alloca i32, i64 %21, align 16
  %cmp20.not.not47 = icmp sgt i32 %17, 0
  %22 = icmp sgt i32 %19, 0
  %or.cond = select i1 %cmp20.not.not47, i1 %22, i1 false
  br i1 %or.cond, label %for.cond22.preheader, label %for.cond37.preheader

for.cond22.preheader:                             ; preds = %for.end13, %for.inc34
  %23 = phi i32 [ %30, %for.inc34 ], [ %17, %for.end13 ]
  %24 = phi i32 [ %31, %for.inc34 ], [ %19, %for.end13 ]
  %indvars.iv76 = phi i64 [ %indvars.iv.next77, %for.inc34 ], [ 0, %for.end13 ]
  %cmp24.not.not45 = icmp sgt i32 %24, 0
  br i1 %cmp24.not.not45, label %for.body25.lr.ph, label %for.inc34

for.body25.lr.ph:                                 ; preds = %for.cond22.preheader
  %25 = mul nuw nsw i64 %indvars.iv76, %20
  %arrayidx27 = getelementptr inbounds nuw i32, ptr %vla16, i64 %25
  br label %for.body25

for.cond37.preheader:                             ; preds = %for.inc34, %for.end13
  %26 = phi i32 [ %19, %for.end13 ], [ %31, %for.inc34 ]
  %27 = load i32, ptr %x1, align 4, !tbaa !5
  %cmp39.not.not64 = icmp sgt i32 %27, 0
  br i1 %cmp39.not.not64, label %for.cond41.preheader.preheader, label %for.end110

for.cond41.preheader.preheader:                   ; preds = %for.cond37.preheader
  %ident.check109.not = icmp eq i32 %19, 1
  %ident.check.not = icmp eq i32 %19, 1
  br label %for.cond41.preheader

for.body25:                                       ; preds = %for.body25.lr.ph, %for.body25
  %indvars.iv73 = phi i64 [ 0, %for.body25.lr.ph ], [ %indvars.iv.next74, %for.body25 ]
  %arrayidx29 = getelementptr inbounds nuw i32, ptr %arrayidx27, i64 %indvars.iv73
  %call30 = call noundef nonnull align 8 dereferenceable(16) ptr @_ZNSirsERi(ptr noundef nonnull align 8 dereferenceable(16) @_ZSt3cin, ptr noundef nonnull align 4 dereferenceable(4) %arrayidx29)
  %indvars.iv.next74 = add nuw nsw i64 %indvars.iv73, 1
  %28 = load i32, ptr %y2, align 4, !tbaa !5
  %29 = sext i32 %28 to i64
  %cmp24.not.not = icmp slt i64 %indvars.iv.next74, %29
  br i1 %cmp24.not.not, label %for.body25, label %for.inc34.loopexit, !llvm.loop !14

for.inc34.loopexit:                               ; preds = %for.body25
  %.pre96 = load i32, ptr %x2, align 4, !tbaa !5
  br label %for.inc34

for.inc34:                                        ; preds = %for.inc34.loopexit, %for.cond22.preheader
  %30 = phi i32 [ %.pre96, %for.inc34.loopexit ], [ %23, %for.cond22.preheader ]
  %31 = phi i32 [ %28, %for.inc34.loopexit ], [ %24, %for.cond22.preheader ]
  %indvars.iv.next77 = add nuw nsw i64 %indvars.iv76, 1
  %32 = sext i32 %30 to i64
  %cmp20.not.not = icmp slt i64 %indvars.iv.next77, %32
  br i1 %cmp20.not.not, label %for.cond22.preheader, label %for.cond37.preheader, !llvm.loop !15

for.cond41.preheader:                             ; preds = %for.cond41.preheader.preheader, %for.inc108
  %33 = phi i32 [ %64, %for.inc108 ], [ %26, %for.cond41.preheader.preheader ]
  %indvars.iv93 = phi i64 [ %indvars.iv.next94, %for.inc108 ], [ 0, %for.cond41.preheader.preheader ]
  %cmp43.not53 = icmp slt i32 %33, 2
  br i1 %cmp43.not53, label %for.cond78.preheader.lr.ph, label %for.cond45.preheader.lr.ph

for.cond45.preheader.lr.ph:                       ; preds = %for.cond41.preheader
  %34 = mul nuw nsw i64 %indvars.iv93, %3
  %arrayidx50 = getelementptr inbounds nuw i32, ptr %vla, i64 %34
  br label %for.cond45.preheader

for.cond45.preheader:                             ; preds = %for.cond45.preheader.lr.ph, %for.end59
  %indvars.iv82 = phi i64 [ 0, %for.cond45.preheader.lr.ph ], [ %indvars.iv.next83, %for.end59 ]
  %35 = load i32, ptr %y1, align 4, !tbaa !5
  %cmp47.not.not49 = icmp sgt i32 %35, 0
  br i1 %cmp47.not.not49, label %for.body48.lr.ph, label %for.end59

for.body48.lr.ph:                                 ; preds = %for.cond45.preheader
  %invariant.gep = getelementptr inbounds nuw i32, ptr %vla16, i64 %indvars.iv82
  %wide.trip.count = zext nneg i32 %35 to i64
  %min.iters.check111 = icmp ugt i32 %35, 3
  %or.cond125 = select i1 %min.iters.check111, i1 %ident.check109.not, i1 false
  br i1 %or.cond125, label %vector.ph112, label %for.body48.preheader

vector.ph112:                                     ; preds = %for.body48.lr.ph
  %n.vec114 = and i64 %wide.trip.count, 2147483644
  br label %vector.body115

vector.body115:                                   ; preds = %vector.body115, %vector.ph112
  %index116 = phi i64 [ 0, %vector.ph112 ], [ %index.next120, %vector.body115 ]
  %vec.phi117 = phi <4 x i32> [ zeroinitializer, %vector.ph112 ], [ %39, %vector.body115 ]
  %36 = getelementptr inbounds nuw i32, ptr %arrayidx50, i64 %index116
  %wide.load118 = load <4 x i32>, ptr %36, align 4, !tbaa !5
  %37 = getelementptr inbounds nuw i32, ptr %invariant.gep, i64 %index116
  %wide.load119 = load <4 x i32>, ptr %37, align 4, !tbaa !5
  %38 = mul nsw <4 x i32> %wide.load119, %wide.load118
  %39 = add <4 x i32> %38, %vec.phi117
  %index.next120 = add nuw i64 %index116, 4
  %40 = icmp eq i64 %index.next120, %n.vec114
  br i1 %40, label %middle.block121, label %vector.body115, !llvm.loop !16

middle.block121:                                  ; preds = %vector.body115
  %41 = call i32 @llvm.vector.reduce.add.v4i32(<4 x i32> %39)
  %cmp.n122 = icmp eq i64 %n.vec114, %wide.trip.count
  br i1 %cmp.n122, label %for.end59, label %for.body48.preheader

for.body48.preheader:                             ; preds = %for.body48.lr.ph, %middle.block121
  %indvars.iv79.ph = phi i64 [ 0, %for.body48.lr.ph ], [ %n.vec114, %middle.block121 ]
  %d.251.ph = phi i32 [ 0, %for.body48.lr.ph ], [ %41, %middle.block121 ]
  br label %for.body48

for.body48:                                       ; preds = %for.body48.preheader, %for.body48
  %indvars.iv79 = phi i64 [ %indvars.iv.next80, %for.body48 ], [ %indvars.iv79.ph, %for.body48.preheader ]
  %d.251 = phi i32 [ %add, %for.body48 ], [ %d.251.ph, %for.body48.preheader ]
  %arrayidx52 = getelementptr inbounds nuw i32, ptr %arrayidx50, i64 %indvars.iv79
  %42 = load i32, ptr %arrayidx52, align 4, !tbaa !5
  %43 = mul nuw nsw i64 %indvars.iv79, %20
  %gep = getelementptr inbounds nuw i32, ptr %invariant.gep, i64 %43
  %44 = load i32, ptr %gep, align 4, !tbaa !5
  %mul = mul nsw i32 %44, %42
  %add = add nsw i32 %mul, %d.251
  %indvars.iv.next80 = add nuw nsw i64 %indvars.iv79, 1
  %exitcond.not = icmp eq i64 %indvars.iv.next80, %wide.trip.count
  br i1 %exitcond.not, label %for.end59, label %for.body48, !llvm.loop !19

for.end59:                                        ; preds = %for.body48, %middle.block121, %for.cond45.preheader
  %d.2.lcssa = phi i32 [ 0, %for.cond45.preheader ], [ %41, %middle.block121 ], [ %add, %for.body48 ]
  %call68 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEi(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, i32 noundef %d.2.lcssa)
  %call1.i = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %call68, ptr noundef nonnull @.str, i64 noundef 1)
  %indvars.iv.next83 = add nuw nsw i64 %indvars.iv82, 1
  %45 = load i32, ptr %y2, align 4, !tbaa !5
  %sub42 = add nsw i32 %45, -2
  %46 = sext i32 %sub42 to i64
  %cmp43.not.not = icmp slt i64 %indvars.iv82, %46
  br i1 %cmp43.not.not, label %for.cond45.preheader, label %for.cond78.preheader.lr.ph, !llvm.loop !20

for.cond78.preheader.lr.ph:                       ; preds = %for.end59, %for.cond41.preheader
  %47 = phi i32 [ %33, %for.cond41.preheader ], [ %45, %for.end59 ]
  %sub73 = add i32 %47, -1
  %48 = mul nuw nsw i64 %indvars.iv93, %3
  %arrayidx83 = getelementptr inbounds nuw i32, ptr %vla, i64 %48
  %49 = sext i32 %sub73 to i64
  br label %for.cond78.preheader

for.cond78.preheader:                             ; preds = %for.cond78.preheader.lr.ph, %_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_.exit
  %indvars.iv90 = phi i64 [ %49, %for.cond78.preheader.lr.ph ], [ %indvars.iv.next91, %_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_.exit ]
  %50 = load i32, ptr %y1, align 4, !tbaa !5
  %cmp80.not.not56 = icmp sgt i32 %50, 0
  br i1 %cmp80.not.not56, label %for.body81.lr.ph, label %for.end94

for.body81.lr.ph:                                 ; preds = %for.cond78.preheader
  %invariant.gep60 = getelementptr i32, ptr %vla16, i64 %indvars.iv90
  %wide.trip.count88 = zext nneg i32 %50 to i64
  %min.iters.check = icmp ugt i32 %50, 3
  %or.cond126 = select i1 %min.iters.check, i1 %ident.check.not, i1 false
  br i1 %or.cond126, label %vector.ph, label %for.body81.preheader

vector.ph:                                        ; preds = %for.body81.lr.ph
  %n.vec = and i64 %wide.trip.count88, 2147483644
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ]
  %vec.phi = phi <4 x i32> [ zeroinitializer, %vector.ph ], [ %54, %vector.body ]
  %51 = getelementptr inbounds nuw i32, ptr %arrayidx83, i64 %index
  %wide.load = load <4 x i32>, ptr %51, align 4, !tbaa !5
  %52 = getelementptr i32, ptr %invariant.gep60, i64 %index
  %wide.load107 = load <4 x i32>, ptr %52, align 4, !tbaa !5
  %53 = mul nsw <4 x i32> %wide.load107, %wide.load
  %54 = add <4 x i32> %53, %vec.phi
  %index.next = add nuw i64 %index, 4
  %55 = icmp eq i64 %index.next, %n.vec
  br i1 %55, label %middle.block, label %vector.body, !llvm.loop !21

middle.block:                                     ; preds = %vector.body
  %56 = call i32 @llvm.vector.reduce.add.v4i32(<4 x i32> %54)
  %cmp.n = icmp eq i64 %n.vec, %wide.trip.count88
  br i1 %cmp.n, label %for.end94, label %for.body81.preheader

for.body81.preheader:                             ; preds = %for.body81.lr.ph, %middle.block
  %indvars.iv85.ph = phi i64 [ 0, %for.body81.lr.ph ], [ %n.vec, %middle.block ]
  %d.458.ph = phi i32 [ 0, %for.body81.lr.ph ], [ %56, %middle.block ]
  br label %for.body81

for.body81:                                       ; preds = %for.body81.preheader, %for.body81
  %indvars.iv85 = phi i64 [ %indvars.iv.next86, %for.body81 ], [ %indvars.iv85.ph, %for.body81.preheader ]
  %d.458 = phi i32 [ %add91, %for.body81 ], [ %d.458.ph, %for.body81.preheader ]
  %arrayidx85 = getelementptr inbounds nuw i32, ptr %arrayidx83, i64 %indvars.iv85
  %57 = load i32, ptr %arrayidx85, align 4, !tbaa !5
  %58 = mul nuw nsw i64 %indvars.iv85, %20
  %gep61 = getelementptr i32, ptr %invariant.gep60, i64 %58
  %59 = load i32, ptr %gep61, align 4, !tbaa !5
  %mul90 = mul nsw i32 %59, %57
  %add91 = add nsw i32 %mul90, %d.458
  %indvars.iv.next86 = add nuw nsw i64 %indvars.iv85, 1
  %exitcond89.not = icmp eq i64 %indvars.iv.next86, %wide.trip.count88
  br i1 %exitcond89.not, label %for.end94, label %for.body81, !llvm.loop !22

for.end94:                                        ; preds = %for.body81, %middle.block, %for.cond78.preheader
  %d.4.lcssa = phi i32 [ 0, %for.cond78.preheader ], [ %56, %middle.block ], [ %add91, %for.body81 ]
  %call103 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEi(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, i32 noundef %d.4.lcssa)
  %vtable.i = load ptr, ptr %call103, align 8, !tbaa !23
  %vbase.offset.ptr.i = getelementptr i8, ptr %vtable.i, i64 -24
  %vbase.offset.i = load i64, ptr %vbase.offset.ptr.i, align 8
  %add.ptr.i = getelementptr inbounds i8, ptr %call103, i64 %vbase.offset.i
  %_M_ctype.i.i = getelementptr inbounds nuw i8, ptr %add.ptr.i, i64 240
  %60 = load ptr, ptr %_M_ctype.i.i, align 8, !tbaa !25
  %tobool.not.i.i.i = icmp eq ptr %60, null
  br i1 %tobool.not.i.i.i, label %if.then.i.i.i, label %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i

if.then.i.i.i:                                    ; preds = %for.end94
  call void @_ZSt16__throw_bad_castv() #7
  unreachable

_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i: ; preds = %for.end94
  %_M_widen_ok.i.i.i = getelementptr inbounds nuw i8, ptr %60, i64 56
  %61 = load i8, ptr %_M_widen_ok.i.i.i, align 8, !tbaa !43
  %tobool.not.i1.i.i = icmp eq i8 %61, 0
  br i1 %tobool.not.i1.i.i, label %if.end.i.i.i, label %if.then.i2.i.i

if.then.i2.i.i:                                   ; preds = %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i
  %arrayidx.i.i.i = getelementptr inbounds nuw i8, ptr %60, i64 67
  %62 = load i8, ptr %arrayidx.i.i.i, align 1, !tbaa !49
  br label %_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_.exit

if.end.i.i.i:                                     ; preds = %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i
  call void @_ZNKSt5ctypeIcE13_M_widen_initEv(ptr noundef nonnull align 8 dereferenceable(570) %60)
  %vtable.i.i.i = load ptr, ptr %60, align 8, !tbaa !23
  %vfn.i.i.i = getelementptr inbounds nuw i8, ptr %vtable.i.i.i, i64 48
  %63 = load ptr, ptr %vfn.i.i.i, align 8
  %call.i.i.i = call noundef signext i8 %63(ptr noundef nonnull align 8 dereferenceable(570) %60, i8 noundef signext 10)
  br label %_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_.exit

_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_.exit: ; preds = %if.then.i2.i.i, %if.end.i.i.i
  %retval.0.i.i.i = phi i8 [ %62, %if.then.i2.i.i ], [ %call.i.i.i, %if.end.i.i.i ]
  %call1.i39 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8) %call103, i8 noundef signext %retval.0.i.i.i)
  %call.i.i40 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo5flushEv(ptr noundef nonnull align 8 dereferenceable(8) %call1.i39)
  %indvars.iv.next91 = add nsw i64 %indvars.iv90, 1
  %64 = load i32, ptr %y2, align 4, !tbaa !5
  %65 = sext i32 %64 to i64
  %cmp76.not.not = icmp slt i64 %indvars.iv.next91, %65
  br i1 %cmp76.not.not, label %for.cond78.preheader, label %for.inc108, !llvm.loop !50

for.inc108:                                       ; preds = %_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_.exit
  %indvars.iv.next94 = add nuw nsw i64 %indvars.iv93, 1
  %66 = load i32, ptr %x1, align 4, !tbaa !5
  %67 = sext i32 %66 to i64
  %cmp39.not.not = icmp slt i64 %indvars.iv.next94, %67
  br i1 %cmp39.not.not, label %for.cond41.preheader, label %for.end110, !llvm.loop !51

for.end110:                                       ; preds = %for.inc108, %for.cond37.preheader
  call void @llvm.stackrestore.p0(ptr %4)
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %y2) #6
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %y1) #6
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %x2) #6
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %x1) #6
  ret i32 0
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr captures(none)) #1

declare noundef nonnull align 8 dereferenceable(16) ptr @_ZNSirsERi(ptr noundef nonnull align 8 dereferenceable(16), ptr noundef nonnull align 4 dereferenceable(4)) local_unnamed_addr #2

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn
declare ptr @llvm.stacksave.p0() #3

declare noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEi(ptr noundef nonnull align 8 dereferenceable(8), i32 noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn
declare void @llvm.stackrestore.p0(ptr) #3

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr captures(none)) #1

declare noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8), ptr noundef, i64 noundef) local_unnamed_addr #2

declare noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8), i8 noundef signext) local_unnamed_addr #2

declare noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo5flushEv(ptr noundef nonnull align 8 dereferenceable(8)) local_unnamed_addr #2

; Function Attrs: noreturn
declare void @_ZSt16__throw_bad_castv() local_unnamed_addr #4

declare void @_ZNKSt5ctypeIcE13_M_widen_initEv(ptr noundef nonnull align 8 dereferenceable(570)) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.vector.reduce.add.v4i32(<4 x i32>) #5

attributes #0 = { mustprogress norecurse uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress nocallback nofree nosync nounwind willreturn }
attributes #4 = { noreturn "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
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
!15 = distinct !{!15, !10, !11, !13}
!16 = distinct !{!16, !10, !11, !17, !18}
!17 = !{!"llvm.loop.isvectorized", i32 1}
!18 = !{!"llvm.loop.unroll.runtime.disable"}
!19 = distinct !{!19, !10, !11, !17}
!20 = distinct !{!20, !10, !11}
!21 = distinct !{!21, !10, !11, !17, !18}
!22 = distinct !{!22, !10, !11, !17}
!23 = !{!24, !24, i64 0}
!24 = !{!"vtable pointer", !8, i64 0}
!25 = !{!26, !40, i64 240}
!26 = !{!"_ZTSSt9basic_iosIcSt11char_traitsIcEE", !27, i64 0, !37, i64 216, !7, i64 224, !38, i64 225, !39, i64 232, !40, i64 240, !41, i64 248, !42, i64 256}
!27 = !{!"_ZTSSt8ios_base", !28, i64 8, !28, i64 16, !29, i64 24, !30, i64 28, !30, i64 32, !31, i64 40, !33, i64 48, !7, i64 64, !6, i64 192, !34, i64 200, !35, i64 208}
!28 = !{!"long", !7, i64 0}
!29 = !{!"_ZTSSt13_Ios_Fmtflags", !7, i64 0}
!30 = !{!"_ZTSSt12_Ios_Iostate", !7, i64 0}
!31 = !{!"p1 _ZTSNSt8ios_base14_Callback_listE", !32, i64 0}
!32 = !{!"any pointer", !7, i64 0}
!33 = !{!"_ZTSNSt8ios_base6_WordsE", !32, i64 0, !28, i64 8}
!34 = !{!"p1 _ZTSNSt8ios_base6_WordsE", !32, i64 0}
!35 = !{!"_ZTSSt6locale", !36, i64 0}
!36 = !{!"p1 _ZTSNSt6locale5_ImplE", !32, i64 0}
!37 = !{!"p1 _ZTSSo", !32, i64 0}
!38 = !{!"bool", !7, i64 0}
!39 = !{!"p1 _ZTSSt15basic_streambufIcSt11char_traitsIcEE", !32, i64 0}
!40 = !{!"p1 _ZTSSt5ctypeIcE", !32, i64 0}
!41 = !{!"p1 _ZTSSt7num_putIcSt19ostreambuf_iteratorIcSt11char_traitsIcEEE", !32, i64 0}
!42 = !{!"p1 _ZTSSt7num_getIcSt19istreambuf_iteratorIcSt11char_traitsIcEEE", !32, i64 0}
!43 = !{!44, !7, i64 56}
!44 = !{!"_ZTSSt5ctypeIcE", !45, i64 0, !46, i64 16, !38, i64 24, !47, i64 32, !47, i64 40, !48, i64 48, !7, i64 56, !7, i64 57, !7, i64 313, !7, i64 569}
!45 = !{!"_ZTSNSt6locale5facetE", !6, i64 8}
!46 = !{!"p1 _ZTS15__locale_struct", !32, i64 0}
!47 = !{!"p1 int", !32, i64 0}
!48 = !{!"p1 short", !32, i64 0}
!49 = !{!7, !7, i64 0}
!50 = distinct !{!50, !10, !11}
!51 = distinct !{!51, !10, !11}
