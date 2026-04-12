; ModuleID = '<stdin>'
source_filename = "/tmp/tmp2x6f_0ik.cpp"
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

; Function Attrs: mustprogress norecurse uwtable
define dso_local noundef i32 @main() local_unnamed_addr #0 {
entry:
  %n = alloca i32, align 4
  %y = alloca i32, align 4
  %m = alloca i32, align 4
  %t = alloca i32, align 4
  %a = alloca [13 x i32], align 16
  call void @llvm.lifetime.start.p0(i64 noundef 4, ptr noundef nonnull align 4 %n) #5
  call void @llvm.lifetime.start.p0(i64 noundef 4, ptr noundef nonnull align 4 %y) #5
  call void @llvm.lifetime.start.p0(i64 noundef 4, ptr noundef nonnull align 4 %m) #5
  call void @llvm.lifetime.start.p0(i64 noundef 4, ptr noundef nonnull align 4 %t) #5
  call void @llvm.lifetime.start.p0(i64 noundef 52, ptr noundef nonnull %a) #5
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %indvars.iv = phi i64 [ %indvars.iv.next, %for.inc ], [ 1, %entry ]
  %cmp = icmp samesign ult i64 %indvars.iv, 8
  br i1 %cmp, label %for.inc, label %for.end

for.inc:                                          ; preds = %for.cond
  %arrayidx = getelementptr inbounds nuw [13 x i32], ptr %a, i64 0, i64 %indvars.iv
  store i32 31, ptr %arrayidx, align 4, !tbaa !5
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 2
  br label %for.cond, !llvm.loop !9

for.end:                                          ; preds = %for.cond
  %call = call noundef nonnull align 8 dereferenceable(16) ptr @_ZNSirsERi(ptr noundef nonnull align 8 dereferenceable(16) @_ZSt3cin, ptr noundef nonnull align 4 dereferenceable(4) %n)
  %vtable.i = load ptr, ptr @_ZSt4cout, align 8
  %vbase.offset.ptr.i = getelementptr i8, ptr %vtable.i, i64 -24
  br label %for.cond9

for.cond9:                                        ; preds = %for.inc52, %for.end
  %i8.0 = phi i32 [ 0, %for.end ], [ %inc53, %for.inc52 ]
  %0 = load i32, ptr %n, align 4, !tbaa !5
  %cmp10 = icmp slt i32 %i8.0, %0
  br i1 %cmp10, label %for.body12, label %for.end54

for.body12:                                       ; preds = %for.cond9
  %call13 = call noundef nonnull align 8 dereferenceable(16) ptr @_ZNSirsERi(ptr noundef nonnull align 8 dereferenceable(16) @_ZSt3cin, ptr noundef nonnull align 4 dereferenceable(4) %y)
  %call14 = call noundef nonnull align 8 dereferenceable(16) ptr @_ZNSirsERi(ptr noundef nonnull align 8 dereferenceable(16) %call13, ptr noundef nonnull align 4 dereferenceable(4) %m)
  %call15 = call noundef nonnull align 8 dereferenceable(16) ptr @_ZNSirsERi(ptr noundef nonnull align 8 dereferenceable(16) %call14, ptr noundef nonnull align 4 dereferenceable(4) %t)
  %1 = load i32, ptr %m, align 4, !tbaa !5
  %2 = load i32, ptr %t, align 4, !tbaa !5
  %cmp16 = icmp sgt i32 %1, %2
  br i1 %cmp16, label %if.then, label %if.end

if.then:                                          ; preds = %for.body12
  store i32 %2, ptr %m, align 4, !tbaa !5
  store i32 %1, ptr %t, align 4, !tbaa !5
  br label %if.end

if.end:                                           ; preds = %if.then, %for.body12
  %3 = phi i32 [ %2, %if.then ], [ %1, %for.body12 ]
  %4 = sext i32 %3 to i64
  %smax = call i32 @llvm.smax.i32(i32 %2, i32 %1)
  %wide.trip.count = sext i32 %smax to i64
  br label %for.cond35

for.cond35:                                       ; preds = %for.inc42, %if.end
  %indvars.iv13 = phi i64 [ %indvars.iv.next14, %for.inc42 ], [ %4, %if.end ]
  %sum.0 = phi i32 [ %add41, %for.inc42 ], [ 0, %if.end ]
  %exitcond.not = icmp eq i64 %indvars.iv13, %wide.trip.count
  br i1 %exitcond.not, label %for.end43, label %for.inc42

for.inc42:                                        ; preds = %for.cond35
  %arrayidx40 = getelementptr inbounds [13 x i32], ptr %a, i64 0, i64 %indvars.iv13
  %5 = load i32, ptr %arrayidx40, align 4, !tbaa !5, !invariant.load !12
  %add41 = add nsw i32 %5, %sum.0
  %indvars.iv.next14 = add nsw i64 %indvars.iv13, 1
  br label %for.cond35, !llvm.loop !13

for.end43:                                        ; preds = %for.cond35
  %rem44 = srem i32 %sum.0, 7
  %cmp45 = icmp eq i32 %rem44, 0
  br i1 %cmp45, label %if.then46, label %if.else48

if.then46:                                        ; preds = %for.end43
  %call1.i = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, ptr noundef nonnull @.str, i64 noundef 3)
  br label %for.inc52

if.else48:                                        ; preds = %for.end43
  %call1.i2 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, ptr noundef nonnull @.str.1, i64 noundef 2)
  br label %for.inc52

for.inc52:                                        ; preds = %if.then46, %if.else48
  %vbase.offset.i = load i64, ptr %vbase.offset.ptr.i, align 8, !invariant.load !12
  %add.ptr.i = getelementptr inbounds i8, ptr @_ZSt4cout, i64 %vbase.offset.i
  %call.i3 = call noundef signext i8 @_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc(ptr noundef nonnull align 8 dereferenceable(264) %add.ptr.i, i8 noundef signext 10)
  %call1.i4 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, i8 noundef signext %call.i3)
  %call.i.i5 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo5flushEv(ptr noundef nonnull align 8 dereferenceable(8) %call1.i4)
  %inc53 = add nuw nsw i32 %i8.0, 1
  br label %for.cond9, !llvm.loop !14

for.end54:                                        ; preds = %for.cond9
  call void @llvm.lifetime.end.p0(i64 noundef 52, ptr noundef nonnull %a) #6
  call void @llvm.lifetime.end.p0(i64 noundef 4, ptr noundef nonnull %t) #6
  call void @llvm.lifetime.end.p0(i64 noundef 4, ptr noundef nonnull %m) #6
  call void @llvm.lifetime.end.p0(i64 noundef 4, ptr noundef nonnull %y) #6
  call void @llvm.lifetime.end.p0(i64 noundef 4, ptr noundef nonnull %n) #6
  ret i32 0
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr captures(none)) #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr captures(none)) #1

declare noundef nonnull align 8 dereferenceable(16) ptr @_ZNSirsERi(ptr noundef nonnull align 8 dereferenceable(16), ptr noundef nonnull align 4 dereferenceable(4)) local_unnamed_addr #2

declare noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8), ptr noundef, i64 noundef) local_unnamed_addr #2

declare noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8), i8 noundef signext) local_unnamed_addr #2

; Function Attrs: mustprogress uwtable
declare noundef signext i8 @_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc(ptr noundef nonnull align 8 dereferenceable(264), i8 noundef signext) local_unnamed_addr #3 align 2

declare noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo5flushEv(ptr noundef nonnull align 8 dereferenceable(8)) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smax.i32(i32, i32) #4

attributes #0 = { mustprogress norecurse uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #5 = { nofree nounwind }
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
!12 = !{}
!13 = distinct !{!13, !10, !11}
!14 = distinct !{!14, !10, !11}
