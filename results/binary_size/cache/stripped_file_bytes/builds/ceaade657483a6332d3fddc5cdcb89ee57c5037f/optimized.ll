; ModuleID = '<stdin>'
source_filename = "/tmp/tmpm5qpnfa7.cpp"
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
@.str = private unnamed_addr constant [4 x i8] c"YES\00", align 1
@.str.1 = private unnamed_addr constant [3 x i8] c"NO\00", align 1

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define dso_local noundef range(i32 28, 30) i32 @_Z3runi(i32 noundef %x) local_unnamed_addr #0 {
entry:
  %rem = srem i32 %x, 100
  %cmp = icmp eq i32 %rem, 0
  br i1 %cmp, label %if.then, label %if.else4

if.then:                                          ; preds = %entry
  %rem1 = srem i32 %x, 400
  br label %if.end10

if.else4:                                         ; preds = %entry
  %0 = and i32 %x, 3
  br label %if.end10

if.end10:                                         ; preds = %if.else4, %if.then
  %.sink = phi i32 [ %0, %if.else4 ], [ %rem1, %if.then ]
  %cmp6 = icmp eq i32 %.sink, 0
  %.3 = select i1 %cmp6, i32 29, i32 28
  ret i32 %.3
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr captures(none)) #1

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr captures(none)) #1

; Function Attrs: mustprogress norecurse uwtable
define dso_local noundef i32 @main() local_unnamed_addr #2 {
entry:
  %n = alloca i32, align 4
  %a = alloca [200 x [3 x i32]], align 16
  %b = alloca [12 x i32], align 16
  %aa = alloca i32, align 4
  %bb = alloca i32, align 4
  %cc = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %n) #6
  call void @llvm.lifetime.start.p0(i64 2400, ptr nonnull %a) #6
  call void @llvm.lifetime.start.p0(i64 48, ptr nonnull %b) #6
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %aa) #6
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %bb) #6
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %cc) #6
  store i32 31, ptr %b, align 16, !tbaa !5
  %arrayidx1 = getelementptr inbounds nuw i8, ptr %b, i64 8
  store <4 x i32> <i32 31, i32 30, i32 31, i32 30>, ptr %arrayidx1, align 8, !tbaa !5
  %arrayidx5 = getelementptr inbounds nuw i8, ptr %b, i64 24
  store <4 x i32> <i32 31, i32 31, i32 30, i32 31>, ptr %arrayidx5, align 8, !tbaa !5
  %arrayidx9 = getelementptr inbounds nuw i8, ptr %b, i64 40
  store i32 30, ptr %arrayidx9, align 8, !tbaa !5
  %arrayidx10 = getelementptr inbounds nuw i8, ptr %b, i64 44
  store i32 31, ptr %arrayidx10, align 4, !tbaa !5
  %call = call noundef nonnull align 8 dereferenceable(16) ptr @_ZNSirsERi(ptr noundef nonnull align 8 dereferenceable(16) @_ZSt3cin, ptr noundef nonnull align 4 dereferenceable(4) %n)
  %0 = load i32, ptr %n, align 4, !tbaa !5
  %cmp44 = icmp sgt i32 %0, 0
  br i1 %cmp44, label %for.body, label %for.end67

for.cond22.preheader:                             ; preds = %for.body
  %1 = icmp sgt i32 %5, 0
  br i1 %1, label %for.body24.lr.ph, label %for.end67

for.body24.lr.ph:                                 ; preds = %for.cond22.preheader
  %arrayidx29 = getelementptr inbounds nuw i8, ptr %b, i64 4
  br label %for.body24

for.body:                                         ; preds = %entry, %for.body
  %indvars.iv = phi i64 [ %indvars.iv.next, %for.body ], [ 0, %entry ]
  %call11 = call noundef nonnull align 8 dereferenceable(16) ptr @_ZNSirsERi(ptr noundef nonnull align 8 dereferenceable(16) @_ZSt3cin, ptr noundef nonnull align 4 dereferenceable(4) %aa)
  %call12 = call noundef nonnull align 8 dereferenceable(16) ptr @_ZNSirsERi(ptr noundef nonnull align 8 dereferenceable(16) %call11, ptr noundef nonnull align 4 dereferenceable(4) %bb)
  %call13 = call noundef nonnull align 8 dereferenceable(16) ptr @_ZNSirsERi(ptr noundef nonnull align 8 dereferenceable(16) %call12, ptr noundef nonnull align 4 dereferenceable(4) %cc)
  %2 = load i32, ptr %aa, align 4, !tbaa !5
  %arrayidx14 = getelementptr inbounds nuw [200 x [3 x i32]], ptr %a, i64 0, i64 %indvars.iv
  store i32 %2, ptr %arrayidx14, align 4, !tbaa !5
  %3 = load i32, ptr %bb, align 4, !tbaa !5
  %arrayidx18 = getelementptr inbounds nuw i8, ptr %arrayidx14, i64 4
  store i32 %3, ptr %arrayidx18, align 4, !tbaa !5
  %4 = load i32, ptr %cc, align 4, !tbaa !5
  %arrayidx21 = getelementptr inbounds nuw i8, ptr %arrayidx14, i64 8
  store i32 %4, ptr %arrayidx21, align 4, !tbaa !5
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  %5 = load i32, ptr %n, align 4, !tbaa !5
  %6 = sext i32 %5 to i64
  %cmp = icmp slt i64 %indvars.iv.next, %6
  br i1 %cmp, label %for.body, label %for.cond22.preheader, !llvm.loop !9

for.body24:                                       ; preds = %for.body24.lr.ph, %for.inc65
  %indvars.iv56 = phi i64 [ 0, %for.body24.lr.ph ], [ %indvars.iv.next57, %for.inc65 ]
  %arrayidx26 = getelementptr inbounds nuw [200 x [3 x i32]], ptr %a, i64 0, i64 %indvars.iv56
  %7 = load i32, ptr %arrayidx26, align 4, !tbaa !5
  %rem.i = srem i32 %7, 100
  %cmp.i = icmp eq i32 %rem.i, 0
  br i1 %cmp.i, label %if.then.i, label %if.else4.i

if.then.i:                                        ; preds = %for.body24
  %rem1.i = srem i32 %7, 400
  br label %_Z3runi.exit

if.else4.i:                                       ; preds = %for.body24
  %8 = and i32 %7, 3
  br label %_Z3runi.exit

_Z3runi.exit:                                     ; preds = %if.then.i, %if.else4.i
  %.sink.i = phi i32 [ %8, %if.else4.i ], [ %rem1.i, %if.then.i ]
  %cmp6.i = icmp eq i32 %.sink.i, 0
  %.3.i = select i1 %cmp6.i, i32 29, i32 28
  store i32 %.3.i, ptr %arrayidx29, align 4, !tbaa !5
  %arrayidx32 = getelementptr inbounds nuw i8, ptr %arrayidx26, i64 4
  %9 = load i32, ptr %arrayidx32, align 4, !tbaa !5
  %arrayidx35 = getelementptr inbounds nuw i8, ptr %arrayidx26, i64 8
  %10 = load i32, ptr %arrayidx35, align 4, !tbaa !5
  %. = call i32 @llvm.smin.i32(i32 %9, i32 %10)
  %.18 = call i32 @llvm.smax.i32(i32 %9, i32 %10)
  %cmp5046 = icmp slt i32 %., %.18
  br i1 %cmp5046, label %for.body51.preheader, label %if.then58

for.body51.preheader:                             ; preds = %_Z3runi.exit
  %11 = call i32 @llvm.smin.i32(i32 %10, i32 %9)
  %smin = sext i32 %11 to i64
  %12 = call i32 @llvm.smax.i32(i32 %9, i32 %10)
  %13 = xor i32 %11, -1
  %14 = add i32 %12, %13
  %15 = zext i32 %14 to i64
  %16 = add nuw nsw i64 %15, 1
  %min.iters.check = icmp ult i32 %14, 3
  br i1 %min.iters.check, label %for.body51.preheader61, label %vector.ph

vector.ph:                                        ; preds = %for.body51.preheader
  %n.vec = and i64 %16, 8589934588
  %17 = add nsw i64 %n.vec, %smin
  %invariant.op = add i64 %smin, -1
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ]
  %vec.phi = phi <4 x i32> [ zeroinitializer, %vector.ph ], [ %19, %vector.body ]
  %.reass = add i64 %index, %invariant.op
  %18 = getelementptr inbounds [12 x i32], ptr %b, i64 0, i64 %.reass
  %wide.load = load <4 x i32>, ptr %18, align 4, !tbaa !5
  %19 = add <4 x i32> %wide.load, %vec.phi
  %index.next = add nuw i64 %index, 4
  %20 = icmp eq i64 %index.next, %n.vec
  br i1 %20, label %middle.block, label %vector.body, !llvm.loop !12

middle.block:                                     ; preds = %vector.body
  %21 = call i32 @llvm.vector.reduce.add.v4i32(<4 x i32> %19)
  %cmp.n = icmp eq i64 %16, %n.vec
  br i1 %cmp.n, label %for.end56, label %for.body51.preheader61

for.body51.preheader61:                           ; preds = %for.body51.preheader, %middle.block
  %indvars.iv53.ph = phi i64 [ %smin, %for.body51.preheader ], [ %17, %middle.block ]
  %num.047.ph = phi i32 [ 0, %for.body51.preheader ], [ %21, %middle.block ]
  br label %for.body51

for.body51:                                       ; preds = %for.body51.preheader61, %for.body51
  %indvars.iv53 = phi i64 [ %indvars.iv.next54, %for.body51 ], [ %indvars.iv53.ph, %for.body51.preheader61 ]
  %num.047 = phi i32 [ %add, %for.body51 ], [ %num.047.ph, %for.body51.preheader61 ]
  %22 = add nsw i64 %indvars.iv53, -1
  %arrayidx53 = getelementptr inbounds [12 x i32], ptr %b, i64 0, i64 %22
  %23 = load i32, ptr %arrayidx53, align 4, !tbaa !5
  %add = add nsw i32 %23, %num.047
  %indvars.iv.next54 = add nsw i64 %indvars.iv53, 1
  %lftr.wideiv = trunc i64 %indvars.iv.next54 to i32
  %exitcond.not = icmp eq i32 %12, %lftr.wideiv
  br i1 %exitcond.not, label %for.end56, label %for.body51, !llvm.loop !15

for.end56:                                        ; preds = %for.body51, %middle.block
  %add.lcssa = phi i32 [ %21, %middle.block ], [ %add, %for.body51 ]
  %24 = srem i32 %add.lcssa, 7
  %25 = icmp eq i32 %24, 0
  br i1 %25, label %if.then58, label %if.else61

if.then58:                                        ; preds = %_Z3runi.exit, %for.end56
  %call1.i = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, ptr noundef nonnull @.str, i64 noundef 3)
  %vtable.i = load ptr, ptr @_ZSt4cout, align 8, !tbaa !16
  %vbase.offset.ptr.i = getelementptr i8, ptr %vtable.i, i64 -24
  %vbase.offset.i = load i64, ptr %vbase.offset.ptr.i, align 8
  %gep49 = getelementptr i8, ptr getelementptr inbounds nuw (i8, ptr @_ZSt4cout, i64 240), i64 %vbase.offset.i
  %26 = load ptr, ptr %gep49, align 8, !tbaa !18
  %tobool.not.i.i.i = icmp eq ptr %26, null
  br i1 %tobool.not.i.i.i, label %if.then.i.i.i, label %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i

if.then.i.i.i:                                    ; preds = %if.then58
  call void @_ZSt16__throw_bad_castv() #7
  unreachable

_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i: ; preds = %if.then58
  %_M_widen_ok.i.i.i = getelementptr inbounds nuw i8, ptr %26, i64 56
  %27 = load i8, ptr %_M_widen_ok.i.i.i, align 8, !tbaa !36
  %tobool.not.i1.i.i = icmp eq i8 %27, 0
  br i1 %tobool.not.i1.i.i, label %if.end.i.i.i, label %if.then.i2.i.i

if.then.i2.i.i:                                   ; preds = %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i
  %arrayidx.i.i.i = getelementptr inbounds nuw i8, ptr %26, i64 67
  %28 = load i8, ptr %arrayidx.i.i.i, align 1, !tbaa !42
  br label %for.inc65

if.end.i.i.i:                                     ; preds = %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i
  call void @_ZNKSt5ctypeIcE13_M_widen_initEv(ptr noundef nonnull align 8 dereferenceable(570) %26)
  %vtable.i.i.i = load ptr, ptr %26, align 8, !tbaa !16
  %vfn.i.i.i = getelementptr inbounds nuw i8, ptr %vtable.i.i.i, i64 48
  %29 = load ptr, ptr %vfn.i.i.i, align 8
  %call.i.i.i = call noundef signext i8 %29(ptr noundef nonnull align 8 dereferenceable(570) %26, i8 noundef signext 10)
  br label %for.inc65

if.else61:                                        ; preds = %for.end56
  %call1.i20 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, ptr noundef nonnull @.str.1, i64 noundef 2)
  %vtable.i24 = load ptr, ptr @_ZSt4cout, align 8, !tbaa !16
  %vbase.offset.ptr.i25 = getelementptr i8, ptr %vtable.i24, i64 -24
  %vbase.offset.i26 = load i64, ptr %vbase.offset.ptr.i25, align 8
  %gep = getelementptr i8, ptr getelementptr inbounds nuw (i8, ptr @_ZSt4cout, i64 240), i64 %vbase.offset.i26
  %30 = load ptr, ptr %gep, align 8, !tbaa !18
  %tobool.not.i.i.i29 = icmp eq ptr %30, null
  br i1 %tobool.not.i.i.i29, label %if.then.i.i.i42, label %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i30

if.then.i.i.i42:                                  ; preds = %if.else61
  call void @_ZSt16__throw_bad_castv() #7
  unreachable

_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i30: ; preds = %if.else61
  %_M_widen_ok.i.i.i31 = getelementptr inbounds nuw i8, ptr %30, i64 56
  %31 = load i8, ptr %_M_widen_ok.i.i.i31, align 8, !tbaa !36
  %tobool.not.i1.i.i32 = icmp eq i8 %31, 0
  br i1 %tobool.not.i1.i.i32, label %if.end.i.i.i38, label %if.then.i2.i.i33

if.then.i2.i.i33:                                 ; preds = %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i30
  %arrayidx.i.i.i34 = getelementptr inbounds nuw i8, ptr %30, i64 67
  %32 = load i8, ptr %arrayidx.i.i.i34, align 1, !tbaa !42
  br label %for.inc65

if.end.i.i.i38:                                   ; preds = %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i30
  call void @_ZNKSt5ctypeIcE13_M_widen_initEv(ptr noundef nonnull align 8 dereferenceable(570) %30)
  %vtable.i.i.i39 = load ptr, ptr %30, align 8, !tbaa !16
  %vfn.i.i.i40 = getelementptr inbounds nuw i8, ptr %vtable.i.i.i39, i64 48
  %33 = load ptr, ptr %vfn.i.i.i40, align 8
  %call.i.i.i41 = call noundef signext i8 %33(ptr noundef nonnull align 8 dereferenceable(570) %30, i8 noundef signext 10)
  br label %for.inc65

for.inc65:                                        ; preds = %if.end.i.i.i38, %if.then.i2.i.i33, %if.end.i.i.i, %if.then.i2.i.i
  %retval.0.i.i.i.sink = phi i8 [ %28, %if.then.i2.i.i ], [ %call.i.i.i, %if.end.i.i.i ], [ %32, %if.then.i2.i.i33 ], [ %call.i.i.i41, %if.end.i.i.i38 ]
  %call1.i22 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, i8 noundef signext %retval.0.i.i.i.sink)
  %call.i.i23 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo5flushEv(ptr noundef nonnull align 8 dereferenceable(8) %call1.i22)
  %indvars.iv.next57 = add nuw nsw i64 %indvars.iv56, 1
  %34 = load i32, ptr %n, align 4, !tbaa !5
  %35 = sext i32 %34 to i64
  %cmp23 = icmp slt i64 %indvars.iv.next57, %35
  br i1 %cmp23, label %for.body24, label %for.end67, !llvm.loop !43

for.end67:                                        ; preds = %for.inc65, %entry, %for.cond22.preheader
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %cc) #6
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %bb) #6
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %aa) #6
  call void @llvm.lifetime.end.p0(i64 48, ptr nonnull %b) #6
  call void @llvm.lifetime.end.p0(i64 2400, ptr nonnull %a) #6
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %n) #6
  ret i32 0
}

declare noundef nonnull align 8 dereferenceable(16) ptr @_ZNSirsERi(ptr noundef nonnull align 8 dereferenceable(16), ptr noundef nonnull align 4 dereferenceable(4)) local_unnamed_addr #3

declare noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8), ptr noundef, i64 noundef) local_unnamed_addr #3

declare noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8), i8 noundef signext) local_unnamed_addr #3

declare noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo5flushEv(ptr noundef nonnull align 8 dereferenceable(8)) local_unnamed_addr #3

; Function Attrs: noreturn
declare void @_ZSt16__throw_bad_castv() local_unnamed_addr #4

declare void @_ZNKSt5ctypeIcE13_M_widen_initEv(ptr noundef nonnull align 8 dereferenceable(570)) local_unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smin.i32(i32, i32) #5

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smax.i32(i32, i32) #5

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.vector.reduce.add.v4i32(<4 x i32>) #5

attributes #0 = { mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { mustprogress norecurse uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
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
!12 = distinct !{!12, !10, !11, !13, !14}
!13 = !{!"llvm.loop.isvectorized", i32 1}
!14 = !{!"llvm.loop.unroll.runtime.disable"}
!15 = distinct !{!15, !10, !11, !13}
!16 = !{!17, !17, i64 0}
!17 = !{!"vtable pointer", !8, i64 0}
!18 = !{!19, !33, i64 240}
!19 = !{!"_ZTSSt9basic_iosIcSt11char_traitsIcEE", !20, i64 0, !30, i64 216, !7, i64 224, !31, i64 225, !32, i64 232, !33, i64 240, !34, i64 248, !35, i64 256}
!20 = !{!"_ZTSSt8ios_base", !21, i64 8, !21, i64 16, !22, i64 24, !23, i64 28, !23, i64 32, !24, i64 40, !26, i64 48, !7, i64 64, !6, i64 192, !27, i64 200, !28, i64 208}
!21 = !{!"long", !7, i64 0}
!22 = !{!"_ZTSSt13_Ios_Fmtflags", !7, i64 0}
!23 = !{!"_ZTSSt12_Ios_Iostate", !7, i64 0}
!24 = !{!"p1 _ZTSNSt8ios_base14_Callback_listE", !25, i64 0}
!25 = !{!"any pointer", !7, i64 0}
!26 = !{!"_ZTSNSt8ios_base6_WordsE", !25, i64 0, !21, i64 8}
!27 = !{!"p1 _ZTSNSt8ios_base6_WordsE", !25, i64 0}
!28 = !{!"_ZTSSt6locale", !29, i64 0}
!29 = !{!"p1 _ZTSNSt6locale5_ImplE", !25, i64 0}
!30 = !{!"p1 _ZTSSo", !25, i64 0}
!31 = !{!"bool", !7, i64 0}
!32 = !{!"p1 _ZTSSt15basic_streambufIcSt11char_traitsIcEE", !25, i64 0}
!33 = !{!"p1 _ZTSSt5ctypeIcE", !25, i64 0}
!34 = !{!"p1 _ZTSSt7num_putIcSt19ostreambuf_iteratorIcSt11char_traitsIcEEE", !25, i64 0}
!35 = !{!"p1 _ZTSSt7num_getIcSt19istreambuf_iteratorIcSt11char_traitsIcEEE", !25, i64 0}
!36 = !{!37, !7, i64 56}
!37 = !{!"_ZTSSt5ctypeIcE", !38, i64 0, !39, i64 16, !31, i64 24, !40, i64 32, !40, i64 40, !41, i64 48, !7, i64 56, !7, i64 57, !7, i64 313, !7, i64 569}
!38 = !{!"_ZTSNSt6locale5facetE", !6, i64 8}
!39 = !{!"p1 _ZTS15__locale_struct", !25, i64 0}
!40 = !{!"p1 int", !25, i64 0}
!41 = !{!"p1 short", !25, i64 0}
!42 = !{!7, !7, i64 0}
!43 = distinct !{!43, !10, !11}
