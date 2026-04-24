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
  store i32 31, ptr %arrayidx1, align 8, !tbaa !5
  %arrayidx2 = getelementptr inbounds nuw i8, ptr %b, i64 12
  store i32 30, ptr %arrayidx2, align 4, !tbaa !5
  %arrayidx3 = getelementptr inbounds nuw i8, ptr %b, i64 16
  store i32 31, ptr %arrayidx3, align 16, !tbaa !5
  %arrayidx4 = getelementptr inbounds nuw i8, ptr %b, i64 20
  store i32 30, ptr %arrayidx4, align 4, !tbaa !5
  %arrayidx5 = getelementptr inbounds nuw i8, ptr %b, i64 24
  store i32 31, ptr %arrayidx5, align 8, !tbaa !5
  %arrayidx6 = getelementptr inbounds nuw i8, ptr %b, i64 28
  store i32 31, ptr %arrayidx6, align 4, !tbaa !5
  %arrayidx7 = getelementptr inbounds nuw i8, ptr %b, i64 32
  store i32 30, ptr %arrayidx7, align 16, !tbaa !5
  %arrayidx8 = getelementptr inbounds nuw i8, ptr %b, i64 36
  store i32 31, ptr %arrayidx8, align 4, !tbaa !5
  %arrayidx9 = getelementptr inbounds nuw i8, ptr %b, i64 40
  store i32 30, ptr %arrayidx9, align 8, !tbaa !5
  %arrayidx10 = getelementptr inbounds nuw i8, ptr %b, i64 44
  store i32 31, ptr %arrayidx10, align 4, !tbaa !5
  %call = call noundef nonnull align 8 dereferenceable(16) ptr @_ZNSirsERi(ptr noundef nonnull align 8 dereferenceable(16) @_ZSt3cin, ptr noundef nonnull align 4 dereferenceable(4) %n)
  br label %for.cond

for.cond:                                         ; preds = %for.body, %entry
  %indvars.iv = phi i64 [ %indvars.iv.next, %for.body ], [ 0, %entry ]
  %0 = load i32, ptr %n, align 4, !tbaa !5
  %1 = sext i32 %0 to i64
  %cmp = icmp slt i64 %indvars.iv, %1
  br i1 %cmp, label %for.body, label %for.cond22.preheader

for.cond22.preheader:                             ; preds = %for.cond
  %arrayidx29 = getelementptr inbounds nuw i8, ptr %b, i64 4
  br label %for.cond22

for.body:                                         ; preds = %for.cond
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
  br label %for.cond, !llvm.loop !9

for.cond22:                                       ; preds = %for.cond22.preheader, %for.inc65
  %5 = phi i32 [ %0, %for.cond22.preheader ], [ %.pre, %for.inc65 ]
  %indvars.iv35 = phi i64 [ 0, %for.cond22.preheader ], [ %indvars.iv.next36, %for.inc65 ]
  %6 = sext i32 %5 to i64
  %cmp23 = icmp slt i64 %indvars.iv35, %6
  br i1 %cmp23, label %for.body24, label %for.end67

for.body24:                                       ; preds = %for.cond22
  %arrayidx26 = getelementptr inbounds nuw [200 x [3 x i32]], ptr %a, i64 0, i64 %indvars.iv35
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
  %11 = call i32 @llvm.smin.i32(i32 %10, i32 %9)
  %smin = sext i32 %11 to i64
  %12 = call i32 @llvm.smax.i32(i32 %9, i32 %10)
  br label %for.cond49

for.cond49:                                       ; preds = %for.body51, %_Z3runi.exit
  %indvars.iv32 = phi i64 [ %indvars.iv.next33, %for.body51 ], [ %smin, %_Z3runi.exit ]
  %num.0 = phi i32 [ %add, %for.body51 ], [ 0, %_Z3runi.exit ]
  %lftr.wideiv = trunc i64 %indvars.iv32 to i32
  %exitcond.not = icmp eq i32 %12, %lftr.wideiv
  br i1 %exitcond.not, label %for.end56, label %for.body51

for.body51:                                       ; preds = %for.cond49
  %13 = add nsw i64 %indvars.iv32, -1
  %arrayidx53 = getelementptr inbounds [12 x i32], ptr %b, i64 0, i64 %13
  %14 = load i32, ptr %arrayidx53, align 4, !tbaa !5
  %add = add nsw i32 %14, %num.0
  %indvars.iv.next33 = add nsw i64 %indvars.iv32, 1
  br label %for.cond49, !llvm.loop !12

for.end56:                                        ; preds = %for.cond49
  %rem = srem i32 %num.0, 7
  %cmp57 = icmp eq i32 %rem, 0
  br i1 %cmp57, label %if.then58, label %if.else61

if.then58:                                        ; preds = %for.end56
  %call1.i = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, ptr noundef nonnull @.str, i64 noundef 3)
  br label %for.inc65

if.else61:                                        ; preds = %for.end56
  %call1.i20 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, ptr noundef nonnull @.str.1, i64 noundef 2)
  br label %for.inc65

for.inc65:                                        ; preds = %if.then58, %if.else61
  %vtable.i = load ptr, ptr @_ZSt4cout, align 8, !tbaa !13
  %vbase.offset.ptr.i = getelementptr i8, ptr %vtable.i, i64 -24
  %vbase.offset.i = load i64, ptr %vbase.offset.ptr.i, align 8
  %add.ptr.i = getelementptr inbounds i8, ptr @_ZSt4cout, i64 %vbase.offset.i
  %call.i22 = call noundef signext i8 @_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc(ptr noundef nonnull align 8 dereferenceable(264) %add.ptr.i, i8 noundef signext 10)
  %call1.i23 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, i8 noundef signext %call.i22)
  %call.i.i24 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo5flushEv(ptr noundef nonnull align 8 dereferenceable(8) %call1.i23)
  %indvars.iv.next36 = add nuw nsw i64 %indvars.iv35, 1
  %.pre = load i32, ptr %n, align 4, !tbaa !5
  br label %for.cond22, !llvm.loop !15

for.end67:                                        ; preds = %for.cond22
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

; Function Attrs: mustprogress uwtable
declare noundef signext i8 @_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc(ptr noundef nonnull align 8 dereferenceable(264), i8 noundef signext) local_unnamed_addr #4 align 2

declare noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo5flushEv(ptr noundef nonnull align 8 dereferenceable(8)) local_unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smin.i32(i32, i32) #5

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smax.i32(i32, i32) #5

attributes #0 = { mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { mustprogress norecurse uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #6 = { nounwind }

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
!12 = distinct !{!12, !10, !11}
!13 = !{!14, !14, i64 0}
!14 = !{!"vtable pointer", !8, i64 0}
!15 = distinct !{!15, !10, !11}
