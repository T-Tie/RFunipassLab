; ModuleID = '<stdin>'
source_filename = "/tmp/tmpjv428e67.cpp"
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
  %a = alloca [100 x [100 x i32]], align 16
  %n = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 40000, ptr nonnull %a) #5
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %n) #5
  %call = call noundef nonnull align 8 dereferenceable(16) ptr @_ZNSirsERi(ptr noundef nonnull align 8 dereferenceable(16) @_ZSt3cin, ptr noundef nonnull align 4 dereferenceable(4) %n)
  br label %for.cond

for.cond:                                         ; preds = %for.cond.cleanup17, %entry
  %k.0 = phi i32 [ 0, %entry ], [ %inc137, %for.cond.cleanup17 ]
  %0 = load i32, ptr %n, align 4, !tbaa !5
  %cmp = icmp slt i32 %k.0, %0
  br i1 %cmp, label %for.cond1, label %for.cond.cleanup

for.cond.cleanup:                                 ; preds = %for.cond
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %n) #5
  call void @llvm.lifetime.end.p0(i64 40000, ptr nonnull %a) #5
  ret i32 0

for.cond1:                                        ; preds = %for.cond, %for.cond.cleanup7
  %1 = phi i32 [ %4, %for.cond.cleanup7 ], [ %0, %for.cond ]
  %indvars.iv51 = phi i64 [ %indvars.iv.next52, %for.cond.cleanup7 ], [ 0, %for.cond ]
  %2 = sext i32 %1 to i64
  %cmp2 = icmp slt i64 %indvars.iv51, %2
  br i1 %cmp2, label %for.cond5, label %for.cond15.preheader

for.cond15.preheader:                             ; preds = %for.cond1
  %smax = call i32 @llvm.smax.i32(i32 %1, i32 0)
  %3 = call i32 @llvm.smax.i32(i32 %1, i32 1)
  %smax80 = add nsw i32 %3, -1
  %wide.trip.count81 = zext nneg i32 %smax80 to i64
  %wide.trip.count = zext nneg i32 %smax to i64
  br label %for.cond15

for.cond5:                                        ; preds = %for.cond1, %for.body8
  %4 = phi i32 [ %.pre, %for.body8 ], [ %1, %for.cond1 ]
  %indvars.iv = phi i64 [ %indvars.iv.next, %for.body8 ], [ 0, %for.cond1 ]
  %5 = sext i32 %4 to i64
  %cmp6 = icmp slt i64 %indvars.iv, %5
  br i1 %cmp6, label %for.body8, label %for.cond.cleanup7

for.cond.cleanup7:                                ; preds = %for.cond5
  %indvars.iv.next52 = add nuw nsw i64 %indvars.iv51, 1
  br label %for.cond1, !llvm.loop !9

for.body8:                                        ; preds = %for.cond5
  %arrayidx10 = getelementptr inbounds nuw [100 x [100 x i32]], ptr %a, i64 0, i64 %indvars.iv51, i64 %indvars.iv
  %call11 = call noundef nonnull align 8 dereferenceable(16) ptr @_ZNSirsERi(ptr noundef nonnull align 8 dereferenceable(16) @_ZSt3cin, ptr noundef nonnull align 4 dereferenceable(4) %arrayidx10)
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  %.pre = load i32, ptr %n, align 4, !tbaa !5
  br label %for.cond5, !llvm.loop !12

for.cond15:                                       ; preds = %for.cond15.preheader, %for.cond.cleanup72
  %indvars.iv77 = phi i64 [ 0, %for.cond15.preheader ], [ %indvars.iv.next78, %for.cond.cleanup72 ]
  %indvars.iv54 = phi i64 [ 1, %for.cond15.preheader ], [ %indvars.iv.next55, %for.cond.cleanup72 ]
  %total.0 = phi i32 [ 0, %for.cond15.preheader ], [ %add130, %for.cond.cleanup72 ]
  %exitcond82.not = icmp eq i64 %indvars.iv77, %wide.trip.count81
  br i1 %exitcond82.not, label %for.cond.cleanup17, label %for.cond20

for.cond.cleanup17:                               ; preds = %for.cond15
  %call134 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEi(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, i32 noundef %total.0)
  %vtable.i = load ptr, ptr %call134, align 8, !tbaa !13
  %vbase.offset.ptr.i = getelementptr i8, ptr %vtable.i, i64 -24
  %vbase.offset.i = load i64, ptr %vbase.offset.ptr.i, align 8
  %add.ptr.i = getelementptr inbounds i8, ptr %call134, i64 %vbase.offset.i
  %call.i49 = call noundef signext i8 @_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc(ptr noundef nonnull align 8 dereferenceable(264) %add.ptr.i, i8 noundef signext 10)
  %call1.i = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8) %call134, i8 noundef signext %call.i49)
  %call.i.i = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo5flushEv(ptr noundef nonnull align 8 dereferenceable(8) %call1.i)
  %inc137 = add nuw nsw i32 %k.0, 1
  br label %for.cond, !llvm.loop !15

for.cond20:                                       ; preds = %for.cond15, %for.inc66
  %indvars.iv62 = phi i64 [ %indvars.iv.next63, %for.inc66 ], [ 0, %for.cond15 ]
  %exitcond.not = icmp eq i64 %indvars.iv62, %wide.trip.count
  br i1 %exitcond.not, label %for.cond70, label %for.body23

for.body23:                                       ; preds = %for.cond20
  %6 = add nuw i64 %indvars.iv62, 4294967295
  %7 = and i64 %6, 4294967295
  %or.cond.not = icmp samesign ult i64 %7, %indvars.iv77
  br i1 %or.cond.not, label %for.inc66, label %if.end

if.end:                                           ; preds = %for.body23
  %arrayidx27 = getelementptr inbounds nuw [100 x [100 x i32]], ptr %a, i64 0, i64 %indvars.iv62
  %8 = load i32, ptr %arrayidx27, align 16, !tbaa !5
  br label %for.cond30

for.cond30:                                       ; preds = %for.body33, %if.end
  %indvars.iv56 = phi i64 [ %indvars.iv.next57, %for.body33 ], [ %indvars.iv54, %if.end ]
  %minValue.0 = phi i32 [ %spec.select, %for.body33 ], [ %8, %if.end ]
  %9 = trunc nuw i64 %indvars.iv56 to i32
  %cmp31 = icmp sgt i32 %1, %9
  br i1 %cmp31, label %for.body33, label %for.cond.cleanup32

for.cond.cleanup32:                               ; preds = %for.cond30
  %sub51 = sub nsw i32 %8, %minValue.0
  store i32 %sub51, ptr %arrayidx27, align 16, !tbaa !5
  br label %for.cond54

for.body33:                                       ; preds = %for.cond30
  %arrayidx37 = getelementptr inbounds nuw [100 x [100 x i32]], ptr %a, i64 0, i64 %indvars.iv62, i64 %indvars.iv56
  %10 = load i32, ptr %arrayidx37, align 4, !tbaa !5
  %spec.select = call i32 @llvm.smin.i32(i32 %10, i32 %minValue.0)
  %indvars.iv.next57 = add nuw nsw i64 %indvars.iv56, 1
  br label %for.cond30, !llvm.loop !16

for.cond54:                                       ; preds = %for.body57, %for.cond.cleanup32
  %indvars.iv59 = phi i64 [ %indvars.iv.next60, %for.body57 ], [ %indvars.iv54, %for.cond.cleanup32 ]
  %11 = trunc nuw i64 %indvars.iv59 to i32
  %cmp55 = icmp sgt i32 %1, %11
  br i1 %cmp55, label %for.body57, label %for.inc66

for.body57:                                       ; preds = %for.cond54
  %arrayidx61 = getelementptr inbounds nuw [100 x [100 x i32]], ptr %a, i64 0, i64 %indvars.iv62, i64 %indvars.iv59
  %12 = load i32, ptr %arrayidx61, align 4, !tbaa !5
  %sub62 = sub nsw i32 %12, %minValue.0
  store i32 %sub62, ptr %arrayidx61, align 4, !tbaa !5
  %indvars.iv.next60 = add nuw nsw i64 %indvars.iv59, 1
  br label %for.cond54, !llvm.loop !17

for.inc66:                                        ; preds = %for.cond54, %for.body23
  %indvars.iv.next63 = add nuw nsw i64 %indvars.iv62, 1
  br label %for.cond20, !llvm.loop !18

for.cond70:                                       ; preds = %for.cond20, %for.inc121
  %indvars.iv72 = phi i64 [ %indvars.iv.next73, %for.inc121 ], [ 0, %for.cond20 ]
  %exitcond76.not = icmp eq i64 %indvars.iv72, %wide.trip.count
  br i1 %exitcond76.not, label %for.cond.cleanup72, label %for.body73

for.cond.cleanup72:                               ; preds = %for.cond70
  %indvars.iv.next78 = add nuw nsw i64 %indvars.iv77, 1
  %arrayidx129 = getelementptr inbounds nuw [100 x [100 x i32]], ptr %a, i64 0, i64 %indvars.iv.next78, i64 %indvars.iv.next78
  %13 = load i32, ptr %arrayidx129, align 4, !tbaa !5
  %add130 = add nsw i32 %13, %total.0
  %indvars.iv.next55 = add nuw nsw i64 %indvars.iv54, 1
  br label %for.cond15, !llvm.loop !19

for.body73:                                       ; preds = %for.cond70
  %14 = add nuw i64 %indvars.iv72, 4294967295
  %15 = and i64 %14, 4294967295
  %or.cond47.not = icmp samesign ult i64 %15, %indvars.iv77
  br i1 %or.cond47.not, label %for.inc121, label %if.end78

if.end78:                                         ; preds = %for.body73
  %arrayidx82 = getelementptr inbounds nuw [100 x i32], ptr %a, i64 0, i64 %indvars.iv72
  %16 = load i32, ptr %arrayidx82, align 4, !tbaa !5
  br label %for.cond85

for.cond85:                                       ; preds = %for.body88, %if.end78
  %indvars.iv66 = phi i64 [ %indvars.iv.next67, %for.body88 ], [ %indvars.iv54, %if.end78 ]
  %minValue79.0 = phi i32 [ %spec.select48, %for.body88 ], [ %16, %if.end78 ]
  %17 = trunc nuw i64 %indvars.iv66 to i32
  %cmp86 = icmp sgt i32 %1, %17
  br i1 %cmp86, label %for.body88, label %for.cond.cleanup87

for.cond.cleanup87:                               ; preds = %for.cond85
  %sub106 = sub nsw i32 %16, %minValue79.0
  store i32 %sub106, ptr %arrayidx82, align 4, !tbaa !5
  br label %for.cond109

for.body88:                                       ; preds = %for.cond85
  %arrayidx92 = getelementptr inbounds nuw [100 x [100 x i32]], ptr %a, i64 0, i64 %indvars.iv66, i64 %indvars.iv72
  %18 = load i32, ptr %arrayidx92, align 4, !tbaa !5
  %spec.select48 = call i32 @llvm.smin.i32(i32 %18, i32 %minValue79.0)
  %indvars.iv.next67 = add nuw nsw i64 %indvars.iv66, 1
  br label %for.cond85, !llvm.loop !20

for.cond109:                                      ; preds = %for.body112, %for.cond.cleanup87
  %indvars.iv69 = phi i64 [ %indvars.iv.next70, %for.body112 ], [ %indvars.iv54, %for.cond.cleanup87 ]
  %19 = trunc nuw i64 %indvars.iv69 to i32
  %cmp110 = icmp sgt i32 %1, %19
  br i1 %cmp110, label %for.body112, label %for.inc121

for.body112:                                      ; preds = %for.cond109
  %arrayidx116 = getelementptr inbounds nuw [100 x [100 x i32]], ptr %a, i64 0, i64 %indvars.iv69, i64 %indvars.iv72
  %20 = load i32, ptr %arrayidx116, align 4, !tbaa !5
  %sub117 = sub nsw i32 %20, %minValue79.0
  store i32 %sub117, ptr %arrayidx116, align 4, !tbaa !5
  %indvars.iv.next70 = add nuw nsw i64 %indvars.iv69, 1
  br label %for.cond109, !llvm.loop !21

for.inc121:                                       ; preds = %for.cond109, %for.body73
  %indvars.iv.next73 = add nuw nsw i64 %indvars.iv72, 1
  br label %for.cond70, !llvm.loop !22
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr captures(none)) #1

declare noundef nonnull align 8 dereferenceable(16) ptr @_ZNSirsERi(ptr noundef nonnull align 8 dereferenceable(16), ptr noundef nonnull align 4 dereferenceable(4)) local_unnamed_addr #2

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr captures(none)) #1

declare noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEi(ptr noundef nonnull align 8 dereferenceable(8), i32 noundef) local_unnamed_addr #2

declare noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8), i8 noundef signext) local_unnamed_addr #2

; Function Attrs: mustprogress uwtable
declare noundef signext i8 @_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc(ptr noundef nonnull align 8 dereferenceable(264), i8 noundef signext) local_unnamed_addr #3 align 2

declare noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo5flushEv(ptr noundef nonnull align 8 dereferenceable(8)) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smin.i32(i32, i32) #4

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
!16 = distinct !{!16, !10, !11}
!17 = distinct !{!17, !10, !11}
!18 = distinct !{!18, !10, !11}
!19 = distinct !{!19, !10, !11}
!20 = distinct !{!20, !10, !11}
!21 = distinct !{!21, !10, !11}
!22 = distinct !{!22, !10, !11}
