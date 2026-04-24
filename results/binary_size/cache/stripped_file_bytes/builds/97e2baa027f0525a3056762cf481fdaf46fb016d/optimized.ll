; ModuleID = '<stdin>'
source_filename = "/tmp/tmpb0uzjquq.cpp"
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
  %height = alloca [30 x i32], align 16
  %num = alloca [30 x i32], align 16
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %n) #5
  call void @llvm.lifetime.start.p0(i64 120, ptr nonnull %height) #5
  call void @llvm.lifetime.start.p0(i64 120, ptr nonnull %num) #5
  %call = call noundef nonnull align 8 dereferenceable(16) ptr @_ZNSirsERi(ptr noundef nonnull align 8 dereferenceable(16) @_ZSt3cin, ptr noundef nonnull align 4 dereferenceable(4) %n)
  br label %for.cond

for.cond:                                         ; preds = %for.body, %entry
  %indvars.iv = phi i64 [ %indvars.iv.next, %for.body ], [ 0, %entry ]
  %0 = load i32, ptr %n, align 4, !tbaa !5
  %1 = sext i32 %0 to i64
  %cmp = icmp slt i64 %indvars.iv, %1
  br i1 %cmp, label %for.body, label %for.cond2.preheader

for.cond2.preheader:                              ; preds = %for.cond
  %smax = call i32 @llvm.smax.i32(i32 %0, i32 0)
  %wide.trip.count = zext nneg i32 %smax to i64
  br label %for.cond2

for.body:                                         ; preds = %for.cond
  %arrayidx = getelementptr inbounds nuw [30 x i32], ptr %height, i64 0, i64 %indvars.iv
  %call1 = call noundef nonnull align 8 dereferenceable(16) ptr @_ZNSirsERi(ptr noundef nonnull align 8 dereferenceable(16) @_ZSt3cin, ptr noundef nonnull align 4 dereferenceable(4) %arrayidx)
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  br label %for.cond, !llvm.loop !9

for.cond2:                                        ; preds = %for.cond2.preheader, %for.body4
  %indvars.iv23 = phi i64 [ 0, %for.cond2.preheader ], [ %indvars.iv.next24, %for.body4 ]
  %exitcond.not = icmp eq i64 %indvars.iv23, %wide.trip.count
  br i1 %exitcond.not, label %for.cond10.preheader, label %for.body4

for.cond10.preheader:                             ; preds = %for.cond2
  %smax34 = call i32 @llvm.smax.i32(i32 %0, i32 1)
  %wide.trip.count35 = zext nneg i32 %smax34 to i64
  br label %for.cond10

for.body4:                                        ; preds = %for.cond2
  %arrayidx6 = getelementptr inbounds nuw [30 x i32], ptr %num, i64 0, i64 %indvars.iv23
  store i32 1, ptr %arrayidx6, align 4, !tbaa !5
  %indvars.iv.next24 = add nuw nsw i64 %indvars.iv23, 1
  br label %for.cond2, !llvm.loop !12

for.cond10:                                       ; preds = %for.cond10.preheader, %for.inc33
  %indvars.iv27 = phi i64 [ 1, %for.cond10.preheader ], [ %indvars.iv.next28, %for.inc33 ]
  %exitcond36.not = icmp eq i64 %indvars.iv27, %wide.trip.count35
  br i1 %exitcond36.not, label %for.cond36, label %for.cond13.preheader

for.cond13.preheader:                             ; preds = %for.cond10
  %arrayidx19 = getelementptr inbounds nuw [30 x i32], ptr %height, i64 0, i64 %indvars.iv27
  %2 = load i32, ptr %arrayidx19, align 4, !tbaa !5
  %arrayidx24 = getelementptr inbounds nuw [30 x i32], ptr %num, i64 0, i64 %indvars.iv27
  br label %for.cond13

for.cond13:                                       ; preds = %for.cond13.backedge, %for.cond13.preheader
  %indvars.iv29 = phi i64 [ %indvars.iv27, %for.cond13.preheader ], [ %indvars.iv.next30, %for.cond13.backedge ]
  %indvars.iv.next30 = add nsw i64 %indvars.iv29, -1
  %cmp14 = icmp sgt i64 %indvars.iv29, 0
  br i1 %cmp14, label %for.body15, label %for.inc33

for.body15:                                       ; preds = %for.cond13
  %arrayidx17 = getelementptr inbounds nuw [30 x i32], ptr %height, i64 0, i64 %indvars.iv.next30
  %3 = load i32, ptr %arrayidx17, align 4, !tbaa !5
  %cmp20.not = icmp slt i32 %3, %2
  br i1 %cmp20.not, label %for.cond13.backedge, label %land.lhs.true

for.cond13.backedge:                              ; preds = %for.body15, %land.lhs.true, %if.then
  br label %for.cond13, !llvm.loop !13

land.lhs.true:                                    ; preds = %for.body15
  %arrayidx22 = getelementptr inbounds nuw [30 x i32], ptr %num, i64 0, i64 %indvars.iv.next30
  %4 = load i32, ptr %arrayidx22, align 4, !tbaa !5
  %5 = load i32, ptr %arrayidx24, align 4, !tbaa !5
  %cmp25.not = icmp slt i32 %4, %5
  br i1 %cmp25.not, label %for.cond13.backedge, label %if.then

if.then:                                          ; preds = %land.lhs.true
  %add = add nsw i32 %4, 1
  store i32 %add, ptr %arrayidx24, align 4, !tbaa !5
  br label %for.cond13.backedge

for.inc33:                                        ; preds = %for.cond13
  %indvars.iv.next28 = add nuw nsw i64 %indvars.iv27, 1
  br label %for.cond10, !llvm.loop !14

for.cond36:                                       ; preds = %for.cond10, %for.body38
  %indvars.iv37 = phi i64 [ %indvars.iv.next38, %for.body38 ], [ 1, %for.cond10 ]
  %max.0 = phi i32 [ %spec.select, %for.body38 ], [ -1, %for.cond10 ]
  %exitcond41.not = icmp eq i64 %indvars.iv37, %wide.trip.count35
  br i1 %exitcond41.not, label %for.end48, label %for.body38

for.body38:                                       ; preds = %for.cond36
  %arrayidx40 = getelementptr inbounds nuw [30 x i32], ptr %num, i64 0, i64 %indvars.iv37
  %6 = load i32, ptr %arrayidx40, align 4, !tbaa !5
  %spec.select = call i32 @llvm.smax.i32(i32 %6, i32 %max.0)
  %indvars.iv.next38 = add nuw nsw i64 %indvars.iv37, 1
  br label %for.cond36, !llvm.loop !15

for.end48:                                        ; preds = %for.cond36
  %call49 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEi(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, i32 noundef %max.0)
  %vtable.i = load ptr, ptr %call49, align 8, !tbaa !16
  %vbase.offset.ptr.i = getelementptr i8, ptr %vtable.i, i64 -24
  %vbase.offset.i = load i64, ptr %vbase.offset.ptr.i, align 8
  %add.ptr.i = getelementptr inbounds i8, ptr %call49, i64 %vbase.offset.i
  %call.i21 = call noundef signext i8 @_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc(ptr noundef nonnull align 8 dereferenceable(264) %add.ptr.i, i8 noundef signext 10)
  %call1.i = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8) %call49, i8 noundef signext %call.i21)
  %call.i.i = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo5flushEv(ptr noundef nonnull align 8 dereferenceable(8) %call1.i)
  call void @llvm.lifetime.end.p0(i64 120, ptr nonnull %num) #5
  call void @llvm.lifetime.end.p0(i64 120, ptr nonnull %height) #5
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %n) #5
  ret i32 0
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr captures(none)) #1

declare noundef nonnull align 8 dereferenceable(16) ptr @_ZNSirsERi(ptr noundef nonnull align 8 dereferenceable(16), ptr noundef nonnull align 4 dereferenceable(4)) local_unnamed_addr #2

declare noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEi(ptr noundef nonnull align 8 dereferenceable(8), i32 noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr captures(none)) #1

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
!15 = distinct !{!15, !10, !11}
!16 = !{!17, !17, i64 0}
!17 = !{!"vtable pointer", !8, i64 0}
