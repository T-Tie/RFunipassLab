; ModuleID = '<stdin>'
source_filename = "/tmp/tmp82lf2ebf.cpp"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

module asm ".globl _ZSt21ios_base_library_initv"

%"class.std::basic_istream" = type { ptr, i64, %"class.std::basic_ios" }
%"class.std::basic_ios" = type { %"class.std::ios_base", ptr, i8, i8, ptr, ptr, ptr, ptr }
%"class.std::ios_base" = type { ptr, i64, i64, i32, i32, i32, ptr, %"struct.std::ios_base::_Words", [8 x %"struct.std::ios_base::_Words"], i32, ptr, %"class.std::locale" }
%"struct.std::ios_base::_Words" = type { ptr, i64 }
%"class.std::locale" = type { ptr }
%"class.std::basic_ostream" = type { ptr, %"class.std::basic_ios" }

@__const.main.d = private unnamed_addr constant [2 x [12 x i32]] [[12 x i32] [i32 31, i32 28, i32 31, i32 30, i32 31, i32 30, i32 31, i32 31, i32 30, i32 31, i32 30, i32 31], [12 x i32] [i32 31, i32 29, i32 31, i32 30, i32 31, i32 30, i32 31, i32 31, i32 30, i32 31, i32 30, i32 31]], align 16
@_ZSt3cin = external global %"class.std::basic_istream", align 8
@_ZSt4cout = external global %"class.std::basic_ostream", align 8
@.str = private unnamed_addr constant [4 x i8] c"YES\00", align 1
@.str.1 = private unnamed_addr constant [3 x i8] c"NO\00", align 1

; Function Attrs: mustprogress norecurse uwtable
define dso_local noundef i32 @main() local_unnamed_addr #0 {
entry:
  %n = alloca i32, align 4
  %year = alloca i32, align 4
  %month1 = alloca i32, align 4
  %month2 = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %n) #5
  %call = call noundef nonnull align 8 dereferenceable(16) ptr @_ZNSirsERi(ptr noundef nonnull align 8 dereferenceable(16) @_ZSt3cin, ptr noundef nonnull align 4 dereferenceable(4) %n)
  br label %while.cond

while.cond:                                       ; preds = %if.end41, %entry
  %0 = load i32, ptr %n, align 4, !tbaa !5
  %dec = add nsw i32 %0, -1
  store i32 %dec, ptr %n, align 4, !tbaa !5
  %tobool.not = icmp eq i32 %0, 0
  br i1 %tobool.not, label %while.end, label %while.body

while.body:                                       ; preds = %while.cond
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %year) #5
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %month1) #5
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %month2) #5
  %call1 = call noundef nonnull align 8 dereferenceable(16) ptr @_ZNSirsERi(ptr noundef nonnull align 8 dereferenceable(16) @_ZSt3cin, ptr noundef nonnull align 4 dereferenceable(4) %year)
  %call2 = call noundef nonnull align 8 dereferenceable(16) ptr @_ZNSirsERi(ptr noundef nonnull align 8 dereferenceable(16) %call1, ptr noundef nonnull align 4 dereferenceable(4) %month1)
  %call3 = call noundef nonnull align 8 dereferenceable(16) ptr @_ZNSirsERi(ptr noundef nonnull align 8 dereferenceable(16) %call2, ptr noundef nonnull align 4 dereferenceable(4) %month2)
  %1 = load i32, ptr %month1, align 4, !tbaa !5
  %2 = load i32, ptr %month2, align 4, !tbaa !5
  %cmp = icmp sgt i32 %1, %2
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %while.body
  store i32 %2, ptr %month1, align 4, !tbaa !5
  store i32 %1, ptr %month2, align 4, !tbaa !5
  br label %if.end

if.end:                                           ; preds = %if.then, %while.body
  %3 = phi i32 [ %2, %if.then ], [ %1, %while.body ]
  %4 = load i32, ptr %year, align 4, !tbaa !5
  %5 = and i32 %4, 3
  %cmp4 = icmp eq i32 %5, 0
  %rem5 = srem i32 %4, 100
  %cmp6.not = icmp ne i32 %rem5, 0
  %or.cond.not43 = and i1 %cmp4, %cmp6.not
  %rem7 = srem i32 %4, 400
  %cmp8 = icmp eq i32 %rem7, 0
  %or.cond42 = or i1 %cmp8, %or.cond.not43
  %6 = sext i32 %3 to i64
  %smax50 = call i32 @llvm.smax.i32(i32 %2, i32 %1)
  %wide.trip.count51 = sext i32 %smax50 to i64
  br i1 %or.cond42, label %for.cond, label %for.cond21

for.cond:                                         ; preds = %if.end, %for.body
  %indvars.iv46 = phi i64 [ %indvars.iv.next47, %for.body ], [ %6, %if.end ]
  %sum.0 = phi i32 [ %add, %for.body ], [ 0, %if.end ]
  %exitcond52.not = icmp eq i64 %indvars.iv46, %wide.trip.count51
  br i1 %exitcond52.not, label %for.end, label %for.body

for.body:                                         ; preds = %for.cond
  %7 = add nsw i64 %indvars.iv46, -1
  %arrayidx11 = getelementptr inbounds [12 x i32], ptr getelementptr inbounds nuw (i8, ptr @__const.main.d, i64 48), i64 0, i64 %7
  %8 = load i32, ptr %arrayidx11, align 4, !tbaa !5
  %add = add nsw i32 %8, %sum.0
  %indvars.iv.next47 = add nsw i64 %indvars.iv46, 1
  br label %for.cond, !llvm.loop !9

for.end:                                          ; preds = %for.cond
  %rem12 = srem i32 %sum.0, 7
  %cmp13 = icmp eq i32 %rem12, 0
  br i1 %cmp13, label %if.then14, label %if.else

if.then14:                                        ; preds = %for.end
  %call1.i = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, ptr noundef nonnull @.str, i64 noundef 3)
  br label %if.end41

if.else:                                          ; preds = %for.end
  %call1.i11 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, ptr noundef nonnull @.str.1, i64 noundef 2)
  br label %if.end41

for.cond21:                                       ; preds = %if.end, %for.body23
  %indvars.iv = phi i64 [ %indvars.iv.next, %for.body23 ], [ %6, %if.end ]
  %sum.1 = phi i32 [ %add28, %for.body23 ], [ 0, %if.end ]
  %exitcond.not = icmp eq i64 %indvars.iv, %wide.trip.count51
  br i1 %exitcond.not, label %for.end31, label %for.body23

for.body23:                                       ; preds = %for.cond21
  %9 = add nsw i64 %indvars.iv, -1
  %arrayidx27 = getelementptr inbounds [12 x i32], ptr @__const.main.d, i64 0, i64 %9
  %10 = load i32, ptr %arrayidx27, align 4, !tbaa !5
  %add28 = add nsw i32 %10, %sum.1
  %indvars.iv.next = add nsw i64 %indvars.iv, 1
  br label %for.cond21, !llvm.loop !12

for.end31:                                        ; preds = %for.cond21
  %rem32 = srem i32 %sum.1, 7
  %cmp33 = icmp eq i32 %rem32, 0
  br i1 %cmp33, label %if.then34, label %if.else37

if.then34:                                        ; preds = %for.end31
  %call1.i14 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, ptr noundef nonnull @.str, i64 noundef 3)
  br label %if.end41

if.else37:                                        ; preds = %for.end31
  %call1.i17 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, ptr noundef nonnull @.str.1, i64 noundef 2)
  br label %if.end41

if.end41:                                         ; preds = %if.then34, %if.else37, %if.then14, %if.else
  %vtable.i28 = load ptr, ptr @_ZSt4cout, align 8, !tbaa !13
  %vbase.offset.ptr.i29 = getelementptr i8, ptr %vtable.i28, i64 -24
  %vbase.offset.i30 = load i64, ptr %vbase.offset.ptr.i29, align 8
  %add.ptr.i31 = getelementptr inbounds i8, ptr @_ZSt4cout, i64 %vbase.offset.i30
  %call.i32 = call noundef signext i8 @_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc(ptr noundef nonnull align 8 dereferenceable(264) %add.ptr.i31, i8 noundef signext 10)
  %call1.i33 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, i8 noundef signext %call.i32)
  %call.i.i34 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo5flushEv(ptr noundef nonnull align 8 dereferenceable(8) %call1.i33)
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %month2) #5
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %month1) #5
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %year) #5
  br label %while.cond, !llvm.loop !15

while.end:                                        ; preds = %while.cond
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %n) #5
  ret i32 0
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr captures(none)) #1

declare noundef nonnull align 8 dereferenceable(16) ptr @_ZNSirsERi(ptr noundef nonnull align 8 dereferenceable(16), ptr noundef nonnull align 4 dereferenceable(4)) local_unnamed_addr #2

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr captures(none)) #1

declare noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8), ptr noundef, i64 noundef) local_unnamed_addr #2

declare noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8), i8 noundef signext) local_unnamed_addr #2

; Function Attrs: mustprogress uwtable
declare noundef signext i8 @_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc(ptr noundef nonnull align 8 dereferenceable(264), i8 noundef signext) local_unnamed_addr #3 align 2

declare noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo5flushEv(ptr noundef nonnull align 8 dereferenceable(8)) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smax.i32(i32, i32) #4

attributes #0 = { mustprogress norecurse uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #5 = { nounwind }

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
