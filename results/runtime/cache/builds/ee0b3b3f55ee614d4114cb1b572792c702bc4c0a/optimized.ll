; ModuleID = '<stdin>'
source_filename = "/tmp/tmplua9pmft.cpp"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

module asm ".globl _ZSt21ios_base_library_initv"

%"class.std::basic_istream" = type { ptr, i64, %"class.std::basic_ios" }
%"class.std::basic_ios" = type { %"class.std::ios_base", ptr, i8, i8, ptr, ptr, ptr, ptr }
%"class.std::ios_base" = type { ptr, i64, i64, i32, i32, i32, ptr, %"struct.std::ios_base::_Words", [8 x %"struct.std::ios_base::_Words"], i32, ptr, %"class.std::locale" }
%"struct.std::ios_base::_Words" = type { ptr, i64 }
%"class.std::locale" = type { ptr }
%"class.std::basic_ostream" = type { ptr, %"class.std::basic_ios" }

@__const.main.b = private unnamed_addr constant [12 x i32] [i32 31, i32 28, i32 31, i32 30, i32 31, i32 30, i32 31, i32 31, i32 30, i32 31, i32 30, i32 31], align 16
@__const.main.c = private unnamed_addr constant [12 x i32] [i32 31, i32 29, i32 31, i32 30, i32 31, i32 30, i32 31, i32 31, i32 30, i32 31, i32 30, i32 31], align 16
@_ZSt3cin = external global %"class.std::basic_istream", align 8
@_ZSt4cout = external global %"class.std::basic_ostream", align 8
@.str = private unnamed_addr constant [4 x i8] c"YES\00", align 1
@.str.1 = private unnamed_addr constant [3 x i8] c"NO\00", align 1

; Function Attrs: mustprogress norecurse uwtable
define dso_local noundef i32 @main() local_unnamed_addr #0 {
entry:
  %n = alloca i32, align 4
  %a = alloca [200 x [3 x i32]], align 16
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %n) #5
  call void @llvm.lifetime.start.p0(i64 2400, ptr nonnull %a) #5
  %call = call noundef nonnull align 8 dereferenceable(16) ptr @_ZNSirsERi(ptr noundef nonnull align 8 dereferenceable(16) @_ZSt3cin, ptr noundef nonnull align 4 dereferenceable(4) %n)
  br label %for.cond

for.cond:                                         ; preds = %for.inc7, %entry
  %indvars.iv77 = phi i64 [ %indvars.iv.next78, %for.inc7 ], [ 0, %entry ]
  %0 = load i32, ptr %n, align 4, !tbaa !5
  %1 = sext i32 %0 to i64
  %cmp = icmp slt i64 %indvars.iv77, %1
  br i1 %cmp, label %for.cond1, label %for.cond10

for.cond1:                                        ; preds = %for.cond, %for.body3
  %indvars.iv = phi i64 [ %indvars.iv.next, %for.body3 ], [ 0, %for.cond ]
  %exitcond.not = icmp eq i64 %indvars.iv, 3
  br i1 %exitcond.not, label %for.inc7, label %for.body3

for.body3:                                        ; preds = %for.cond1
  %arrayidx5 = getelementptr inbounds nuw [200 x [3 x i32]], ptr %a, i64 0, i64 %indvars.iv77, i64 %indvars.iv
  %call6 = call noundef nonnull align 8 dereferenceable(16) ptr @_ZNSirsERi(ptr noundef nonnull align 8 dereferenceable(16) @_ZSt3cin, ptr noundef nonnull align 4 dereferenceable(4) %arrayidx5)
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  br label %for.cond1, !llvm.loop !9

for.inc7:                                         ; preds = %for.cond1
  %indvars.iv.next78 = add nuw nsw i64 %indvars.iv77, 1
  br label %for.cond, !llvm.loop !12

for.cond10:                                       ; preds = %for.cond, %for.inc109
  %2 = phi i32 [ %.pre, %for.inc109 ], [ %0, %for.cond ]
  %indvars.iv86 = phi i64 [ %indvars.iv.next87, %for.inc109 ], [ 0, %for.cond ]
  %3 = sext i32 %2 to i64
  %cmp11 = icmp slt i64 %indvars.iv86, %3
  br i1 %cmp11, label %for.body12, label %for.end111

for.body12:                                       ; preds = %for.cond10
  %arrayidx14 = getelementptr inbounds nuw [200 x [3 x i32]], ptr %a, i64 0, i64 %indvars.iv86
  %4 = load i32, ptr %arrayidx14, align 4, !tbaa !5
  %5 = and i32 %4, 3
  %cmp16 = icmp eq i32 %5, 0
  %rem20 = srem i32 %4, 100
  %cmp21.not = icmp ne i32 %rem20, 0
  %or.cond.not75 = and i1 %cmp16, %cmp21.not
  %rem25 = srem i32 %4, 400
  %cmp26 = icmp eq i32 %rem25, 0
  %or.cond74 = or i1 %cmp26, %or.cond.not75
  %arrayidx29 = getelementptr inbounds nuw i8, ptr %arrayidx14, i64 4
  %6 = load i32, ptr %arrayidx29, align 4, !tbaa !5
  %arrayidx32 = getelementptr inbounds nuw i8, ptr %arrayidx14, i64 8
  %7 = load i32, ptr %arrayidx32, align 4, !tbaa !5
  %. = call i32 @llvm.smax.i32(i32 %6, i32 %7)
  %.39 = call i32 @llvm.smin.i32(i32 %6, i32 %7)
  %sub = add i32 %.39, -1
  %sub48 = add nsw i32 %., -1
  %8 = sext i32 %sub to i64
  %9 = sext i32 %sub48 to i64
  br i1 %or.cond74, label %for.cond47, label %for.cond89

for.cond47:                                       ; preds = %for.body12, %for.body50
  %indvars.iv83 = phi i64 [ %indvars.iv.next84, %for.body50 ], [ %8, %for.body12 ]
  %z.0 = phi i32 [ %add, %for.body50 ], [ 0, %for.body12 ]
  %cmp49 = icmp slt i64 %indvars.iv83, %9
  br i1 %cmp49, label %for.body50, label %for.end55

for.body50:                                       ; preds = %for.cond47
  %arrayidx52 = getelementptr inbounds [12 x i32], ptr @__const.main.c, i64 0, i64 %indvars.iv83
  %10 = load i32, ptr %arrayidx52, align 4, !tbaa !5
  %add = add nsw i32 %10, %z.0
  %indvars.iv.next84 = add nsw i64 %indvars.iv83, 1
  br label %for.cond47, !llvm.loop !13

for.end55:                                        ; preds = %for.cond47
  %rem56 = srem i32 %z.0, 7
  %cmp57 = icmp eq i32 %rem56, 0
  br i1 %cmp57, label %if.then58, label %if.else61

if.then58:                                        ; preds = %for.end55
  %call1.i = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, ptr noundef nonnull @.str, i64 noundef 3)
  br label %for.inc109

if.else61:                                        ; preds = %for.end55
  %call1.i43 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, ptr noundef nonnull @.str.1, i64 noundef 2)
  br label %for.inc109

for.cond89:                                       ; preds = %for.body12, %for.body92
  %indvars.iv80 = phi i64 [ %indvars.iv.next81, %for.body92 ], [ %8, %for.body12 ]
  %z.1 = phi i32 [ %add95, %for.body92 ], [ 0, %for.body12 ]
  %cmp91 = icmp slt i64 %indvars.iv80, %9
  br i1 %cmp91, label %for.body92, label %for.end98

for.body92:                                       ; preds = %for.cond89
  %arrayidx94 = getelementptr inbounds [12 x i32], ptr @__const.main.b, i64 0, i64 %indvars.iv80
  %11 = load i32, ptr %arrayidx94, align 4, !tbaa !5
  %add95 = add nsw i32 %11, %z.1
  %indvars.iv.next81 = add nsw i64 %indvars.iv80, 1
  br label %for.cond89, !llvm.loop !14

for.end98:                                        ; preds = %for.cond89
  %rem99 = srem i32 %z.1, 7
  %cmp100 = icmp eq i32 %rem99, 0
  br i1 %cmp100, label %if.then101, label %if.else104

if.then101:                                       ; preds = %for.end98
  %call1.i46 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, ptr noundef nonnull @.str, i64 noundef 3)
  br label %for.inc109

if.else104:                                       ; preds = %for.end98
  %call1.i49 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, ptr noundef nonnull @.str.1, i64 noundef 2)
  br label %for.inc109

for.inc109:                                       ; preds = %if.else61, %if.then58, %if.else104, %if.then101
  %vtable.i54 = load ptr, ptr @_ZSt4cout, align 8, !tbaa !15
  %vbase.offset.ptr.i55 = getelementptr i8, ptr %vtable.i54, i64 -24
  %vbase.offset.i56 = load i64, ptr %vbase.offset.ptr.i55, align 8
  %add.ptr.i57 = getelementptr inbounds i8, ptr @_ZSt4cout, i64 %vbase.offset.i56
  %call.i = call noundef signext i8 @_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc(ptr noundef nonnull align 8 dereferenceable(264) %add.ptr.i57, i8 noundef signext 10)
  %call1.i58 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, i8 noundef signext %call.i)
  %call.i.i59 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo5flushEv(ptr noundef nonnull align 8 dereferenceable(8) %call1.i58)
  %indvars.iv.next87 = add nuw nsw i64 %indvars.iv86, 1
  %.pre = load i32, ptr %n, align 4, !tbaa !5
  br label %for.cond10, !llvm.loop !17

for.end111:                                       ; preds = %for.cond10
  call void @llvm.lifetime.end.p0(i64 2400, ptr nonnull %a) #5
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

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smin.i32(i32, i32) #4

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
!13 = distinct !{!13, !10, !11}
!14 = distinct !{!14, !10, !11}
!15 = !{!16, !16, i64 0}
!16 = !{!"vtable pointer", !8, i64 0}
!17 = distinct !{!17, !10, !11}
