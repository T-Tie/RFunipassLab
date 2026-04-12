; ModuleID = '<stdin>'
source_filename = "/tmp/tmpi8yzlnnp.cpp"
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
  %a = alloca [101 x [101 x i32]], align 16
  %b = alloca [101 x [101 x i32]], align 16
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %x1) #5
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %y1) #5
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %x2) #5
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %y2) #5
  call void @llvm.lifetime.start.p0(i64 40804, ptr nonnull %a) #5
  call void @llvm.lifetime.start.p0(i64 40804, ptr nonnull %b) #5
  %call = call noundef nonnull align 8 dereferenceable(16) ptr @_ZNSirsERi(ptr noundef nonnull align 8 dereferenceable(16) @_ZSt3cin, ptr noundef nonnull align 4 dereferenceable(4) %x1)
  %call1 = call noundef nonnull align 8 dereferenceable(16) ptr @_ZNSirsERi(ptr noundef nonnull align 8 dereferenceable(16) %call, ptr noundef nonnull align 4 dereferenceable(4) %y1)
  br label %for.cond

for.cond:                                         ; preds = %for.cond.cleanup4, %entry
  %indvars.iv29 = phi i64 [ %indvars.iv.next30, %for.cond.cleanup4 ], [ 1, %entry ]
  %0 = load i32, ptr %x1, align 4, !tbaa !5
  %1 = sext i32 %0 to i64
  %cmp.not = icmp sgt i64 %indvars.iv29, %1
  br i1 %cmp.not, label %for.cond.cleanup, label %for.cond2

for.cond.cleanup:                                 ; preds = %for.cond
  %call12 = call noundef nonnull align 8 dereferenceable(16) ptr @_ZNSirsERi(ptr noundef nonnull align 8 dereferenceable(16) @_ZSt3cin, ptr noundef nonnull align 4 dereferenceable(4) %x2)
  %call13 = call noundef nonnull align 8 dereferenceable(16) ptr @_ZNSirsERi(ptr noundef nonnull align 8 dereferenceable(16) %call12, ptr noundef nonnull align 4 dereferenceable(4) %y2)
  br label %for.cond15

for.cond2:                                        ; preds = %for.cond, %for.body5
  %indvars.iv = phi i64 [ %indvars.iv.next, %for.body5 ], [ 1, %for.cond ]
  %2 = load i32, ptr %y1, align 4, !tbaa !5
  %3 = sext i32 %2 to i64
  %cmp3.not = icmp sgt i64 %indvars.iv, %3
  br i1 %cmp3.not, label %for.cond.cleanup4, label %for.body5

for.cond.cleanup4:                                ; preds = %for.cond2
  %indvars.iv.next30 = add nuw nsw i64 %indvars.iv29, 1
  br label %for.cond, !llvm.loop !9

for.body5:                                        ; preds = %for.cond2
  %arrayidx7 = getelementptr inbounds nuw [101 x [101 x i32]], ptr %a, i64 0, i64 %indvars.iv29, i64 %indvars.iv
  %call8 = call noundef nonnull align 8 dereferenceable(16) ptr @_ZNSirsERi(ptr noundef nonnull align 8 dereferenceable(16) @_ZSt3cin, ptr noundef nonnull align 4 dereferenceable(4) %arrayidx7)
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  br label %for.cond2, !llvm.loop !12

for.cond15:                                       ; preds = %for.cond.cleanup22, %for.cond.cleanup
  %indvars.iv35 = phi i64 [ %indvars.iv.next36, %for.cond.cleanup22 ], [ 1, %for.cond.cleanup ]
  %4 = load i32, ptr %x2, align 4, !tbaa !5
  %5 = sext i32 %4 to i64
  %cmp16.not = icmp sgt i64 %indvars.iv35, %5
  br i1 %cmp16.not, label %for.cond36, label %for.cond20

for.cond20:                                       ; preds = %for.cond15, %for.body23
  %indvars.iv32 = phi i64 [ %indvars.iv.next33, %for.body23 ], [ 1, %for.cond15 ]
  %6 = load i32, ptr %y2, align 4, !tbaa !5
  %7 = sext i32 %6 to i64
  %cmp21.not = icmp sgt i64 %indvars.iv32, %7
  br i1 %cmp21.not, label %for.cond.cleanup22, label %for.body23

for.cond.cleanup22:                               ; preds = %for.cond20
  %indvars.iv.next36 = add nuw nsw i64 %indvars.iv35, 1
  br label %for.cond15, !llvm.loop !13

for.body23:                                       ; preds = %for.cond20
  %arrayidx27 = getelementptr inbounds nuw [101 x [101 x i32]], ptr %b, i64 0, i64 %indvars.iv35, i64 %indvars.iv32
  %call28 = call noundef nonnull align 8 dereferenceable(16) ptr @_ZNSirsERi(ptr noundef nonnull align 8 dereferenceable(16) @_ZSt3cin, ptr noundef nonnull align 4 dereferenceable(4) %arrayidx27)
  %indvars.iv.next33 = add nuw nsw i64 %indvars.iv32, 1
  br label %for.cond20, !llvm.loop !14

for.cond36:                                       ; preds = %for.cond15, %for.cond.cleanup43
  %indvars.iv44 = phi i64 [ %indvars.iv.next45, %for.cond.cleanup43 ], [ 1, %for.cond15 ]
  %8 = load i32, ptr %x1, align 4, !tbaa !5
  %9 = sext i32 %8 to i64
  %cmp37.not = icmp sgt i64 %indvars.iv44, %9
  br i1 %cmp37.not, label %for.cond.cleanup38, label %for.cond41

for.cond.cleanup38:                               ; preds = %for.cond36
  call void @llvm.lifetime.end.p0(i64 40804, ptr nonnull %b) #5
  call void @llvm.lifetime.end.p0(i64 40804, ptr nonnull %a) #5
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %y2) #5
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %x2) #5
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %y1) #5
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %x1) #5
  ret i32 0

for.cond41:                                       ; preds = %for.cond36, %for.inc80
  %indvars.iv41 = phi i64 [ %indvars.iv.next42, %for.inc80 ], [ 1, %for.cond36 ]
  %10 = load i32, ptr %y2, align 4, !tbaa !5
  %11 = sext i32 %10 to i64
  %cmp42.not = icmp sgt i64 %indvars.iv41, %11
  br i1 %cmp42.not, label %for.cond.cleanup43, label %for.body44

for.cond.cleanup43:                               ; preds = %for.cond41
  %vtable.i = load ptr, ptr @_ZSt4cout, align 8, !tbaa !15
  %vbase.offset.ptr.i = getelementptr i8, ptr %vtable.i, i64 -24
  %vbase.offset.i = load i64, ptr %vbase.offset.ptr.i, align 8
  %add.ptr.i = getelementptr inbounds i8, ptr @_ZSt4cout, i64 %vbase.offset.i
  %call.i25 = call noundef signext i8 @_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc(ptr noundef nonnull align 8 dereferenceable(264) %add.ptr.i, i8 noundef signext 10)
  %call1.i26 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, i8 noundef signext %call.i25)
  %call.i.i27 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo5flushEv(ptr noundef nonnull align 8 dereferenceable(8) %call1.i26)
  %indvars.iv.next45 = add nuw nsw i64 %indvars.iv44, 1
  br label %for.cond36, !llvm.loop !17

for.body44:                                       ; preds = %for.cond41
  %12 = load i32, ptr %x2, align 4, !tbaa !5
  %smax = call i32 @llvm.smax.i32(i32 %12, i32 0)
  %13 = add nuw i32 %smax, 1
  %wide.trip.count = zext i32 %13 to i64
  br label %for.cond49

for.cond49:                                       ; preds = %for.body52, %for.body44
  %14 = phi i32 [ %add, %for.body52 ], [ 0, %for.body44 ]
  %indvars.iv38 = phi i64 [ %indvars.iv.next39, %for.body52 ], [ 1, %for.body44 ]
  %exitcond = icmp eq i64 %indvars.iv38, %wide.trip.count
  br i1 %exitcond, label %for.cond.cleanup51, label %for.body52

for.cond.cleanup51:                               ; preds = %for.cond49
  %cmp68 = icmp eq i64 %indvars.iv41, 1
  br i1 %cmp68, label %for.inc80, label %if.else

for.body52:                                       ; preds = %for.cond49
  %arrayidx56 = getelementptr inbounds nuw [101 x [101 x i32]], ptr %a, i64 0, i64 %indvars.iv44, i64 %indvars.iv38
  %15 = load i32, ptr %arrayidx56, align 4, !tbaa !5
  %arrayidx60 = getelementptr inbounds nuw [101 x [101 x i32]], ptr %b, i64 0, i64 %indvars.iv38, i64 %indvars.iv41
  %16 = load i32, ptr %arrayidx60, align 4, !tbaa !5
  %mul = mul nsw i32 %16, %15
  %add = add nsw i32 %14, %mul
  %indvars.iv.next39 = add nuw nsw i64 %indvars.iv38, 1
  br label %for.cond49, !llvm.loop !18

if.else:                                          ; preds = %for.cond.cleanup51
  %call1.i = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, ptr noundef nonnull @.str, i64 noundef 1)
  br label %for.inc80

for.inc80:                                        ; preds = %for.cond.cleanup51, %if.else
  %call73 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEi(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, i32 noundef %14)
  %indvars.iv.next42 = add nuw nsw i64 %indvars.iv41, 1
  br label %for.cond41, !llvm.loop !19
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr captures(none)) #1

declare noundef nonnull align 8 dereferenceable(16) ptr @_ZNSirsERi(ptr noundef nonnull align 8 dereferenceable(16), ptr noundef nonnull align 4 dereferenceable(4)) local_unnamed_addr #2

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr captures(none)) #1

declare noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEi(ptr noundef nonnull align 8 dereferenceable(8), i32 noundef) local_unnamed_addr #2

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
!13 = distinct !{!13, !10, !11}
!14 = distinct !{!14, !10, !11}
!15 = !{!16, !16, i64 0}
!16 = !{!"vtable pointer", !8, i64 0}
!17 = distinct !{!17, !10, !11}
!18 = distinct !{!18, !10, !11}
!19 = distinct !{!19, !10, !11}
