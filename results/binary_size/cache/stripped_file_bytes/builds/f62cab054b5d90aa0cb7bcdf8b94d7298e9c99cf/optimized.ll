; ModuleID = '<stdin>'
source_filename = "/tmp/tmp94w20kgz.cpp"
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
  %y1 = alloca i32, align 4
  %x2 = alloca i32, align 4
  %y2 = alloca i32, align 4
  %c = alloca [100 x [100 x i32]], align 16
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %x1) #7
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %y1) #7
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %x2) #7
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %y2) #7
  %call = call noundef nonnull align 8 dereferenceable(16) ptr @_ZNSirsERi(ptr noundef nonnull align 8 dereferenceable(16) @_ZSt3cin, ptr noundef nonnull align 4 dereferenceable(4) %x1)
  %call1 = call noundef nonnull align 8 dereferenceable(16) ptr @_ZNSirsERi(ptr noundef nonnull align 8 dereferenceable(16) %call, ptr noundef nonnull align 4 dereferenceable(4) %y1)
  %0 = load i32, ptr %x1, align 4, !tbaa !5
  %1 = zext i32 %0 to i64
  %2 = load i32, ptr %y1, align 4, !tbaa !5
  %3 = zext i32 %2 to i64
  %4 = call ptr @llvm.stacksave.p0()
  %5 = mul nuw i64 %3, %1
  %vla = alloca i32, i64 %5, align 16
  %6 = load i32, ptr %x1, align 4, !tbaa !5
  %cmp30 = icmp sgt i32 %6, 0
  %7 = load i32, ptr %y1, align 4
  %8 = icmp sgt i32 %7, 0
  %or.cond71 = select i1 %cmp30, i1 %8, i1 false
  br i1 %or.cond71, label %for.cond2.preheader, label %for.end10

for.cond2.preheader:                              ; preds = %entry, %for.inc8
  %9 = phi i32 [ %14, %for.inc8 ], [ %6, %entry ]
  %10 = phi i32 [ %15, %for.inc8 ], [ %7, %entry ]
  %indvars.iv46 = phi i64 [ %indvars.iv.next47, %for.inc8 ], [ 0, %entry ]
  %cmp328 = icmp sgt i32 %10, 0
  br i1 %cmp328, label %for.body4.lr.ph, label %for.inc8

for.body4.lr.ph:                                  ; preds = %for.cond2.preheader
  %11 = mul nuw nsw i64 %indvars.iv46, %3
  %arrayidx = getelementptr inbounds nuw i32, ptr %vla, i64 %11
  br label %for.body4

for.body4:                                        ; preds = %for.body4.lr.ph, %for.body4
  %indvars.iv = phi i64 [ 0, %for.body4.lr.ph ], [ %indvars.iv.next, %for.body4 ]
  %arrayidx6 = getelementptr inbounds nuw i32, ptr %arrayidx, i64 %indvars.iv
  %call7 = call noundef nonnull align 8 dereferenceable(16) ptr @_ZNSirsERi(ptr noundef nonnull align 8 dereferenceable(16) @_ZSt3cin, ptr noundef nonnull align 4 dereferenceable(4) %arrayidx6)
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  %12 = load i32, ptr %y1, align 4, !tbaa !5
  %13 = sext i32 %12 to i64
  %cmp3 = icmp slt i64 %indvars.iv.next, %13
  br i1 %cmp3, label %for.body4, label %for.inc8.loopexit, !llvm.loop !9

for.inc8.loopexit:                                ; preds = %for.body4
  %.pre = load i32, ptr %x1, align 4, !tbaa !5
  br label %for.inc8

for.inc8:                                         ; preds = %for.inc8.loopexit, %for.cond2.preheader
  %14 = phi i32 [ %.pre, %for.inc8.loopexit ], [ %9, %for.cond2.preheader ]
  %15 = phi i32 [ %12, %for.inc8.loopexit ], [ %10, %for.cond2.preheader ]
  %indvars.iv.next47 = add nuw nsw i64 %indvars.iv46, 1
  %16 = sext i32 %14 to i64
  %cmp = icmp slt i64 %indvars.iv.next47, %16
  br i1 %cmp, label %for.cond2.preheader, label %for.end10, !llvm.loop !12

for.end10:                                        ; preds = %for.inc8, %entry
  %call11 = call noundef nonnull align 8 dereferenceable(16) ptr @_ZNSirsERi(ptr noundef nonnull align 8 dereferenceable(16) @_ZSt3cin, ptr noundef nonnull align 4 dereferenceable(4) %x2)
  %call12 = call noundef nonnull align 8 dereferenceable(16) ptr @_ZNSirsERi(ptr noundef nonnull align 8 dereferenceable(16) %call11, ptr noundef nonnull align 4 dereferenceable(4) %y2)
  %17 = load i32, ptr %x2, align 4, !tbaa !5
  %18 = zext i32 %17 to i64
  %19 = load i32, ptr %y2, align 4, !tbaa !5
  %20 = zext i32 %19 to i64
  %21 = mul nuw i64 %20, %18
  %vla13 = alloca i32, i64 %21, align 16
  %cmp1534 = icmp sgt i32 %17, 0
  %22 = icmp sgt i32 %19, 0
  %or.cond = select i1 %cmp1534, i1 %22, i1 false
  br i1 %or.cond, label %for.cond17.preheader, label %for.end30

for.cond17.preheader:                             ; preds = %for.end10, %for.inc28
  %23 = phi i32 [ %28, %for.inc28 ], [ %17, %for.end10 ]
  %24 = phi i32 [ %29, %for.inc28 ], [ %19, %for.end10 ]
  %indvars.iv52 = phi i64 [ %indvars.iv.next53, %for.inc28 ], [ 0, %for.end10 ]
  %cmp1832 = icmp sgt i32 %24, 0
  br i1 %cmp1832, label %for.body19.lr.ph, label %for.inc28

for.body19.lr.ph:                                 ; preds = %for.cond17.preheader
  %25 = mul nuw nsw i64 %indvars.iv52, %20
  %arrayidx21 = getelementptr inbounds nuw i32, ptr %vla13, i64 %25
  br label %for.body19

for.body19:                                       ; preds = %for.body19.lr.ph, %for.body19
  %indvars.iv49 = phi i64 [ 0, %for.body19.lr.ph ], [ %indvars.iv.next50, %for.body19 ]
  %arrayidx23 = getelementptr inbounds nuw i32, ptr %arrayidx21, i64 %indvars.iv49
  %call24 = call noundef nonnull align 8 dereferenceable(16) ptr @_ZNSirsERi(ptr noundef nonnull align 8 dereferenceable(16) @_ZSt3cin, ptr noundef nonnull align 4 dereferenceable(4) %arrayidx23)
  %indvars.iv.next50 = add nuw nsw i64 %indvars.iv49, 1
  %26 = load i32, ptr %y2, align 4, !tbaa !5
  %27 = sext i32 %26 to i64
  %cmp18 = icmp slt i64 %indvars.iv.next50, %27
  br i1 %cmp18, label %for.body19, label %for.inc28.loopexit, !llvm.loop !14

for.inc28.loopexit:                               ; preds = %for.body19
  %.pre64 = load i32, ptr %x2, align 4, !tbaa !5
  br label %for.inc28

for.inc28:                                        ; preds = %for.inc28.loopexit, %for.cond17.preheader
  %28 = phi i32 [ %.pre64, %for.inc28.loopexit ], [ %23, %for.cond17.preheader ]
  %29 = phi i32 [ %26, %for.inc28.loopexit ], [ %24, %for.cond17.preheader ]
  %indvars.iv.next53 = add nuw nsw i64 %indvars.iv52, 1
  %30 = sext i32 %28 to i64
  %cmp15 = icmp slt i64 %indvars.iv.next53, %30
  br i1 %cmp15, label %for.cond17.preheader, label %for.end30, !llvm.loop !15

for.end30:                                        ; preds = %for.inc28, %for.end10
  %31 = phi i32 [ %19, %for.end10 ], [ %29, %for.inc28 ]
  call void @llvm.lifetime.start.p0(i64 40000, ptr nonnull %c) #7
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(40000) %c, i8 0, i64 40000, i1 false)
  %32 = load i32, ptr %x1, align 4, !tbaa !5
  %cmp3240 = icmp sgt i32 %32, 0
  %33 = icmp sgt i32 %31, 0
  %or.cond69 = select i1 %cmp3240, i1 %33, i1 false
  br i1 %or.cond69, label %for.cond34.preheader.preheader, label %for.end74

for.cond34.preheader.preheader:                   ; preds = %for.end30
  %ident.check.not = icmp eq i32 %19, 1
  br label %for.cond34.preheader

for.cond34.preheader:                             ; preds = %for.cond34.preheader.preheader, %for.inc72
  %34 = phi i32 [ %59, %for.inc72 ], [ %32, %for.cond34.preheader.preheader ]
  %35 = phi i32 [ %60, %for.inc72 ], [ %31, %for.cond34.preheader.preheader ]
  %indvars.iv61 = phi i64 [ %indvars.iv.next62, %for.inc72 ], [ 0, %for.cond34.preheader.preheader ]
  %cmp3538 = icmp sgt i32 %35, 0
  br i1 %cmp3538, label %for.cond37.preheader.lr.ph, label %for.inc72

for.cond37.preheader.lr.ph:                       ; preds = %for.cond34.preheader
  %36 = mul nuw nsw i64 %indvars.iv61, %3
  %arrayidx41 = getelementptr inbounds nuw i32, ptr %vla, i64 %36
  br label %for.cond37.preheader

for.cond37.preheader:                             ; preds = %for.cond37.preheader.lr.ph, %for.inc69
  %indvars.iv58 = phi i64 [ 0, %for.cond37.preheader.lr.ph ], [ %indvars.iv.next59, %for.inc69 ]
  %37 = phi i32 [ %35, %for.cond37.preheader.lr.ph ], [ %57, %for.inc69 ]
  %38 = load i32, ptr %x2, align 4, !tbaa !5
  %cmp3836 = icmp sgt i32 %38, 0
  br i1 %cmp3836, label %for.body39.lr.ph, label %for.end54

for.body39.lr.ph:                                 ; preds = %for.cond37.preheader
  %invariant.gep = getelementptr inbounds nuw i32, ptr %vla13, i64 %indvars.iv58
  %arrayidx51 = getelementptr inbounds nuw [100 x [100 x i32]], ptr %c, i64 0, i64 %indvars.iv61, i64 %indvars.iv58
  %arrayidx51.promoted = load i32, ptr %arrayidx51, align 4, !tbaa !5
  %wide.trip.count = zext nneg i32 %38 to i64
  %min.iters.check = icmp ugt i32 %38, 3
  %or.cond76 = select i1 %min.iters.check, i1 %ident.check.not, i1 false
  br i1 %or.cond76, label %vector.ph, label %for.body39.preheader

vector.ph:                                        ; preds = %for.body39.lr.ph
  %n.vec = and i64 %wide.trip.count, 2147483644
  %39 = insertelement <4 x i32> <i32 poison, i32 0, i32 0, i32 0>, i32 %arrayidx51.promoted, i64 0
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ]
  %vec.phi = phi <4 x i32> [ %39, %vector.ph ], [ %43, %vector.body ]
  %40 = getelementptr inbounds nuw i32, ptr %arrayidx41, i64 %index
  %wide.load = load <4 x i32>, ptr %40, align 4, !tbaa !5
  %41 = getelementptr inbounds nuw i32, ptr %invariant.gep, i64 %index
  %wide.load75 = load <4 x i32>, ptr %41, align 4, !tbaa !5
  %42 = mul nsw <4 x i32> %wide.load75, %wide.load
  %43 = add <4 x i32> %vec.phi, %42
  %index.next = add nuw i64 %index, 4
  %44 = icmp eq i64 %index.next, %n.vec
  br i1 %44, label %middle.block, label %vector.body, !llvm.loop !16

middle.block:                                     ; preds = %vector.body
  %45 = call i32 @llvm.vector.reduce.add.v4i32(<4 x i32> %43)
  %cmp.n = icmp eq i64 %n.vec, %wide.trip.count
  br i1 %cmp.n, label %for.cond37.for.end54_crit_edge, label %for.body39.preheader

for.body39.preheader:                             ; preds = %for.body39.lr.ph, %middle.block
  %indvars.iv55.ph = phi i64 [ 0, %for.body39.lr.ph ], [ %n.vec, %middle.block ]
  %.ph = phi i32 [ %arrayidx51.promoted, %for.body39.lr.ph ], [ %45, %middle.block ]
  br label %for.body39

for.body39:                                       ; preds = %for.body39.preheader, %for.body39
  %indvars.iv55 = phi i64 [ %indvars.iv.next56, %for.body39 ], [ %indvars.iv55.ph, %for.body39.preheader ]
  %46 = phi i32 [ %add, %for.body39 ], [ %.ph, %for.body39.preheader ]
  %arrayidx43 = getelementptr inbounds nuw i32, ptr %arrayidx41, i64 %indvars.iv55
  %47 = load i32, ptr %arrayidx43, align 4, !tbaa !5
  %48 = mul nuw nsw i64 %indvars.iv55, %20
  %gep = getelementptr inbounds nuw i32, ptr %invariant.gep, i64 %48
  %49 = load i32, ptr %gep, align 4, !tbaa !5
  %mul = mul nsw i32 %49, %47
  %add = add nsw i32 %46, %mul
  %indvars.iv.next56 = add nuw nsw i64 %indvars.iv55, 1
  %exitcond.not = icmp eq i64 %indvars.iv.next56, %wide.trip.count
  br i1 %exitcond.not, label %for.cond37.for.end54_crit_edge, label %for.body39, !llvm.loop !19

for.cond37.for.end54_crit_edge:                   ; preds = %for.body39, %middle.block
  %add.lcssa = phi i32 [ %45, %middle.block ], [ %add, %for.body39 ]
  store i32 %add.lcssa, ptr %arrayidx51, align 4, !tbaa !5
  br label %for.end54

for.end54:                                        ; preds = %for.cond37.for.end54_crit_edge, %for.cond37.preheader
  %sub = add nsw i32 %37, -1
  %50 = sext i32 %sub to i64
  %cmp55 = icmp slt i64 %indvars.iv58, %50
  br i1 %cmp55, label %if.then, label %if.else

if.then:                                          ; preds = %for.end54
  %arrayidx59 = getelementptr inbounds nuw [100 x [100 x i32]], ptr %c, i64 0, i64 %indvars.iv61, i64 %indvars.iv58
  %51 = load i32, ptr %arrayidx59, align 4, !tbaa !5
  %call60 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEi(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, i32 noundef %51)
  %call1.i = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %call60, ptr noundef nonnull @.str, i64 noundef 1)
  br label %for.inc69

if.else:                                          ; preds = %for.end54
  %arrayidx66 = getelementptr inbounds [100 x [100 x i32]], ptr %c, i64 0, i64 %indvars.iv61, i64 %50
  %52 = load i32, ptr %arrayidx66, align 4, !tbaa !5
  %call67 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEi(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, i32 noundef %52)
  %vtable.i = load ptr, ptr %call67, align 8, !tbaa !20
  %vbase.offset.ptr.i = getelementptr i8, ptr %vtable.i, i64 -24
  %vbase.offset.i = load i64, ptr %vbase.offset.ptr.i, align 8
  %add.ptr.i = getelementptr inbounds i8, ptr %call67, i64 %vbase.offset.i
  %_M_ctype.i.i = getelementptr inbounds nuw i8, ptr %add.ptr.i, i64 240
  %53 = load ptr, ptr %_M_ctype.i.i, align 8, !tbaa !22
  %tobool.not.i.i.i = icmp eq ptr %53, null
  br i1 %tobool.not.i.i.i, label %if.then.i.i.i, label %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i

if.then.i.i.i:                                    ; preds = %if.else
  call void @_ZSt16__throw_bad_castv() #8
  unreachable

_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i: ; preds = %if.else
  %_M_widen_ok.i.i.i = getelementptr inbounds nuw i8, ptr %53, i64 56
  %54 = load i8, ptr %_M_widen_ok.i.i.i, align 8, !tbaa !40
  %tobool.not.i1.i.i = icmp eq i8 %54, 0
  br i1 %tobool.not.i1.i.i, label %if.end.i.i.i, label %if.then.i2.i.i

if.then.i2.i.i:                                   ; preds = %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i
  %arrayidx.i.i.i = getelementptr inbounds nuw i8, ptr %53, i64 67
  %55 = load i8, ptr %arrayidx.i.i.i, align 1, !tbaa !46
  br label %_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_.exit

if.end.i.i.i:                                     ; preds = %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i
  call void @_ZNKSt5ctypeIcE13_M_widen_initEv(ptr noundef nonnull align 8 dereferenceable(570) %53)
  %vtable.i.i.i = load ptr, ptr %53, align 8, !tbaa !20
  %vfn.i.i.i = getelementptr inbounds nuw i8, ptr %vtable.i.i.i, i64 48
  %56 = load ptr, ptr %vfn.i.i.i, align 8
  %call.i.i.i = call noundef signext i8 %56(ptr noundef nonnull align 8 dereferenceable(570) %53, i8 noundef signext 10)
  br label %_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_.exit

_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_.exit: ; preds = %if.then.i2.i.i, %if.end.i.i.i
  %retval.0.i.i.i = phi i8 [ %55, %if.then.i2.i.i ], [ %call.i.i.i, %if.end.i.i.i ]
  %call1.i26 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8) %call67, i8 noundef signext %retval.0.i.i.i)
  %call.i.i27 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo5flushEv(ptr noundef nonnull align 8 dereferenceable(8) %call1.i26)
  br label %for.inc69

for.inc69:                                        ; preds = %if.then, %_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_.exit
  %indvars.iv.next59 = add nuw nsw i64 %indvars.iv58, 1
  %57 = load i32, ptr %y2, align 4, !tbaa !5
  %58 = sext i32 %57 to i64
  %cmp35 = icmp slt i64 %indvars.iv.next59, %58
  br i1 %cmp35, label %for.cond37.preheader, label %for.inc72.loopexit, !llvm.loop !47

for.inc72.loopexit:                               ; preds = %for.inc69
  %.pre65 = load i32, ptr %x1, align 4, !tbaa !5
  br label %for.inc72

for.inc72:                                        ; preds = %for.inc72.loopexit, %for.cond34.preheader
  %59 = phi i32 [ %.pre65, %for.inc72.loopexit ], [ %34, %for.cond34.preheader ]
  %60 = phi i32 [ %57, %for.inc72.loopexit ], [ %35, %for.cond34.preheader ]
  %indvars.iv.next62 = add nuw nsw i64 %indvars.iv61, 1
  %61 = sext i32 %59 to i64
  %cmp32 = icmp slt i64 %indvars.iv.next62, %61
  br i1 %cmp32, label %for.cond34.preheader, label %for.end74, !llvm.loop !48

for.end74:                                        ; preds = %for.inc72, %for.end30
  call void @llvm.lifetime.end.p0(i64 40000, ptr nonnull %c) #7
  call void @llvm.stackrestore.p0(ptr %4)
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %y2) #7
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %x2) #7
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %y1) #7
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %x1) #7
  ret i32 0
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr captures(none)) #1

declare noundef nonnull align 8 dereferenceable(16) ptr @_ZNSirsERi(ptr noundef nonnull align 8 dereferenceable(16), ptr noundef nonnull align 4 dereferenceable(4)) local_unnamed_addr #2

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn
declare ptr @llvm.stacksave.p0() #3

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #4

declare noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEi(ptr noundef nonnull align 8 dereferenceable(8), i32 noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr captures(none)) #1

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn
declare void @llvm.stackrestore.p0(ptr) #3

declare noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8), ptr noundef, i64 noundef) local_unnamed_addr #2

declare noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8), i8 noundef signext) local_unnamed_addr #2

declare noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo5flushEv(ptr noundef nonnull align 8 dereferenceable(8)) local_unnamed_addr #2

; Function Attrs: noreturn
declare void @_ZSt16__throw_bad_castv() local_unnamed_addr #5

declare void @_ZNKSt5ctypeIcE13_M_widen_initEv(ptr noundef nonnull align 8 dereferenceable(570)) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.vector.reduce.add.v4i32(<4 x i32>) #6

attributes #0 = { mustprogress norecurse uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress nocallback nofree nosync nounwind willreturn }
attributes #4 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #5 = { noreturn "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #7 = { nounwind }
attributes #8 = { noreturn }

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
!20 = !{!21, !21, i64 0}
!21 = !{!"vtable pointer", !8, i64 0}
!22 = !{!23, !37, i64 240}
!23 = !{!"_ZTSSt9basic_iosIcSt11char_traitsIcEE", !24, i64 0, !34, i64 216, !7, i64 224, !35, i64 225, !36, i64 232, !37, i64 240, !38, i64 248, !39, i64 256}
!24 = !{!"_ZTSSt8ios_base", !25, i64 8, !25, i64 16, !26, i64 24, !27, i64 28, !27, i64 32, !28, i64 40, !30, i64 48, !7, i64 64, !6, i64 192, !31, i64 200, !32, i64 208}
!25 = !{!"long", !7, i64 0}
!26 = !{!"_ZTSSt13_Ios_Fmtflags", !7, i64 0}
!27 = !{!"_ZTSSt12_Ios_Iostate", !7, i64 0}
!28 = !{!"p1 _ZTSNSt8ios_base14_Callback_listE", !29, i64 0}
!29 = !{!"any pointer", !7, i64 0}
!30 = !{!"_ZTSNSt8ios_base6_WordsE", !29, i64 0, !25, i64 8}
!31 = !{!"p1 _ZTSNSt8ios_base6_WordsE", !29, i64 0}
!32 = !{!"_ZTSSt6locale", !33, i64 0}
!33 = !{!"p1 _ZTSNSt6locale5_ImplE", !29, i64 0}
!34 = !{!"p1 _ZTSSo", !29, i64 0}
!35 = !{!"bool", !7, i64 0}
!36 = !{!"p1 _ZTSSt15basic_streambufIcSt11char_traitsIcEE", !29, i64 0}
!37 = !{!"p1 _ZTSSt5ctypeIcE", !29, i64 0}
!38 = !{!"p1 _ZTSSt7num_putIcSt19ostreambuf_iteratorIcSt11char_traitsIcEEE", !29, i64 0}
!39 = !{!"p1 _ZTSSt7num_getIcSt19istreambuf_iteratorIcSt11char_traitsIcEEE", !29, i64 0}
!40 = !{!41, !7, i64 56}
!41 = !{!"_ZTSSt5ctypeIcE", !42, i64 0, !43, i64 16, !35, i64 24, !44, i64 32, !44, i64 40, !45, i64 48, !7, i64 56, !7, i64 57, !7, i64 313, !7, i64 569}
!42 = !{!"_ZTSNSt6locale5facetE", !6, i64 8}
!43 = !{!"p1 _ZTS15__locale_struct", !29, i64 0}
!44 = !{!"p1 int", !29, i64 0}
!45 = !{!"p1 short", !29, i64 0}
!46 = !{!7, !7, i64 0}
!47 = distinct !{!47, !10, !11}
!48 = distinct !{!48, !10, !11, !13}
