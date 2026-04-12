; ModuleID = '<stdin>'
source_filename = "/tmp/tmpld0gpy3p.cpp"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

module asm ".globl _ZSt21ios_base_library_initv"

%"class.std::basic_istream" = type { ptr, i64, %"class.std::basic_ios" }
%"class.std::basic_ios" = type { %"class.std::ios_base", ptr, i8, i8, ptr, ptr, ptr, ptr }
%"class.std::ios_base" = type { ptr, i64, i64, i32, i32, i32, ptr, %"struct.std::ios_base::_Words", [8 x %"struct.std::ios_base::_Words"], i32, ptr, %"class.std::locale" }
%"struct.std::ios_base::_Words" = type { ptr, i64 }
%"class.std::locale" = type { ptr }
%"class.std::basic_ostream" = type { ptr, %"class.std::basic_ios" }

@sum = dso_local local_unnamed_addr global i32 0, align 4
@_ZSt3cin = external global %"class.std::basic_istream", align 8
@_ZSt4cout = external global %"class.std::basic_ostream", align 8

; Function Attrs: mustprogress norecurse uwtable
define dso_local noundef i32 @main() local_unnamed_addr #0 {
entry:
  %n = alloca i32, align 4
  %a = alloca [100 x [100 x i32]], align 16
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %n) #6
  store i32 0, ptr %n, align 4, !tbaa !5
  %call = call noundef nonnull align 8 dereferenceable(16) ptr @_ZNSirsERi(ptr noundef nonnull align 8 dereferenceable(16) @_ZSt3cin, ptr noundef nonnull align 4 dereferenceable(4) %n)
  call void @llvm.lifetime.start.p0(i64 40000, ptr nonnull %a) #6
  br label %for.cond

for.cond:                                         ; preds = %for.inc20, %entry
  %f.0 = phi i32 [ 1, %entry ], [ %inc21, %for.inc20 ]
  %0 = load i32, ptr %n, align 4, !tbaa !5
  %cmp.not = icmp sgt i32 %f.0, %0
  br i1 %cmp.not, label %for.cond.cleanup, label %for.cond1

for.cond.cleanup:                                 ; preds = %for.cond
  call void @llvm.lifetime.end.p0(i64 40000, ptr nonnull %a) #6
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %n) #6
  ret i32 0

for.cond1:                                        ; preds = %for.cond, %for.cond.cleanup8
  %1 = phi i32 [ %5, %for.cond.cleanup8 ], [ %0, %for.cond ]
  %indvars.iv9 = phi i64 [ %indvars.iv.next10, %for.cond.cleanup8 ], [ 0, %for.cond ]
  %2 = sext i32 %1 to i64
  %cmp2.not.not = icmp slt i64 %indvars.iv9, %2
  br i1 %cmp2.not.not, label %for.cond5, label %for.cond.cleanup3

for.cond.cleanup3:                                ; preds = %for.cond1
  store i32 0, ptr @sum, align 4, !tbaa !5
  call void @_Z11SubtractionPA100_ii(ptr noundef nonnull %a, i32 noundef %1)
  %3 = load i32, ptr %n, align 4, !tbaa !5
  %cmp16 = icmp eq i32 %f.0, %3
  %4 = load i32, ptr @sum, align 4, !tbaa !5
  %call17 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEi(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, i32 noundef %4)
  br i1 %cmp16, label %for.inc20, label %if.else

for.cond5:                                        ; preds = %for.cond1, %for.body9
  %5 = phi i32 [ %.pre, %for.body9 ], [ %1, %for.cond1 ]
  %indvars.iv = phi i64 [ %indvars.iv.next, %for.body9 ], [ 0, %for.cond1 ]
  %6 = sext i32 %5 to i64
  %cmp7.not.not = icmp slt i64 %indvars.iv, %6
  br i1 %cmp7.not.not, label %for.body9, label %for.cond.cleanup8

for.cond.cleanup8:                                ; preds = %for.cond5
  %indvars.iv.next10 = add nuw nsw i64 %indvars.iv9, 1
  br label %for.cond1, !llvm.loop !9

for.body9:                                        ; preds = %for.cond5
  %arrayidx11 = getelementptr inbounds nuw [100 x [100 x i32]], ptr %a, i64 0, i64 %indvars.iv9, i64 %indvars.iv
  %call12 = call noundef nonnull align 8 dereferenceable(16) ptr @_ZNSirsERi(ptr noundef nonnull align 8 dereferenceable(16) @_ZSt3cin, ptr noundef nonnull align 4 dereferenceable(4) %arrayidx11)
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  %.pre = load i32, ptr %n, align 4, !tbaa !5
  br label %for.cond5, !llvm.loop !12

if.else:                                          ; preds = %for.cond.cleanup3
  %vtable.i = load ptr, ptr %call17, align 8, !tbaa !13
  %vbase.offset.ptr.i = getelementptr i8, ptr %vtable.i, i64 -24
  %vbase.offset.i = load i64, ptr %vbase.offset.ptr.i, align 8
  %add.ptr.i = getelementptr inbounds i8, ptr %call17, i64 %vbase.offset.i
  %call.i7 = call noundef signext i8 @_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc(ptr noundef nonnull align 8 dereferenceable(264) %add.ptr.i, i8 noundef signext 10)
  %call1.i = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8) %call17, i8 noundef signext %call.i7)
  %call.i.i = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo5flushEv(ptr noundef nonnull align 8 dereferenceable(8) %call1.i)
  br label %for.inc20

for.inc20:                                        ; preds = %for.cond.cleanup3, %if.else
  %inc21 = add nuw nsw i32 %f.0, 1
  br label %for.cond, !llvm.loop !15
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr captures(none)) #1

declare noundef nonnull align 8 dereferenceable(16) ptr @_ZNSirsERi(ptr noundef nonnull align 8 dereferenceable(16), ptr noundef nonnull align 4 dereferenceable(4)) local_unnamed_addr #2

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr captures(none)) #1

; Function Attrs: mustprogress nofree nosync nounwind memory(readwrite, inaccessiblemem: none) uwtable
define dso_local void @_Z11SubtractionPA100_ii(ptr noundef captures(none) %m, i32 noundef %n) local_unnamed_addr #3 {
entry:
  %mtuta = alloca [100 x [100 x i32]], align 16
  %cmp.not = icmp eq i32 %n, 1
  br i1 %cmp.not, label %if.end122, label %for.cond.preheader

for.cond.preheader:                               ; preds = %entry
  %smax = tail call i32 @llvm.smax.i32(i32 %n, i32 0)
  %wide.trip.count62 = zext nneg i32 %smax to i64
  %wide.trip.count = zext i32 %n to i64
  br label %for.cond

for.cond:                                         ; preds = %for.cond.preheader, %for.cond.cleanup22
  %indvars.iv59 = phi i64 [ 0, %for.cond.preheader ], [ %indvars.iv.next60, %for.cond.cleanup22 ]
  %exitcond63.not = icmp eq i64 %indvars.iv59, %wide.trip.count62
  br i1 %exitcond63.not, label %for.cond36.preheader, label %for.body

for.cond36.preheader:                             ; preds = %for.cond
  %wide.trip.count67 = zext i32 %n to i64
  br label %for.cond36

for.body:                                         ; preds = %for.cond
  %arrayidx = getelementptr inbounds nuw [100 x i32], ptr %m, i64 %indvars.iv59
  %0 = load i32, ptr %arrayidx, align 4, !tbaa !5
  br label %for.cond3

for.cond3:                                        ; preds = %for.body7, %for.body
  %indvars.iv = phi i64 [ %indvars.iv.next, %for.body7 ], [ 0, %for.body ]
  %min.0 = phi i32 [ %spec.select, %for.body7 ], [ %0, %for.body ]
  %exitcond.not = icmp eq i64 %indvars.iv, %wide.trip.count
  br i1 %exitcond.not, label %for.cond19, label %for.body7

for.body7:                                        ; preds = %for.cond3
  %arrayidx11 = getelementptr inbounds nuw [100 x i32], ptr %m, i64 %indvars.iv59, i64 %indvars.iv
  %1 = load i32, ptr %arrayidx11, align 4, !tbaa !5
  %spec.select = tail call i32 @llvm.smin.i32(i32 %min.0, i32 %1)
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  br label %for.cond3, !llvm.loop !16

for.cond19:                                       ; preds = %for.cond3, %for.body23
  %indvars.iv54 = phi i64 [ %indvars.iv.next55, %for.body23 ], [ 0, %for.cond3 ]
  %exitcond58.not = icmp eq i64 %indvars.iv54, %wide.trip.count
  br i1 %exitcond58.not, label %for.cond.cleanup22, label %for.body23

for.cond.cleanup22:                               ; preds = %for.cond19
  %indvars.iv.next60 = add nuw nsw i64 %indvars.iv59, 1
  br label %for.cond, !llvm.loop !17

for.body23:                                       ; preds = %for.cond19
  %arrayidx27 = getelementptr inbounds nuw [100 x i32], ptr %m, i64 %indvars.iv59, i64 %indvars.iv54
  %2 = load i32, ptr %arrayidx27, align 4, !tbaa !5
  %sub28 = sub nsw i32 %2, %min.0
  store i32 %sub28, ptr %arrayidx27, align 4, !tbaa !5
  %indvars.iv.next55 = add nuw nsw i64 %indvars.iv54, 1
  br label %for.cond19, !llvm.loop !18

for.cond36:                                       ; preds = %for.cond36.preheader, %for.cond.cleanup69
  %indvars.iv74 = phi i64 [ 0, %for.cond36.preheader ], [ %indvars.iv.next75, %for.cond.cleanup69 ]
  %exitcond78.not = icmp eq i64 %indvars.iv74, %wide.trip.count62
  br i1 %exitcond78.not, label %for.cond.cleanup39, label %for.body40

for.cond.cleanup39:                               ; preds = %for.cond36
  %arrayidx83 = getelementptr inbounds nuw i8, ptr %m, i64 404
  %3 = load i32, ptr %arrayidx83, align 4, !tbaa !5
  %4 = load i32, ptr @sum, align 4, !tbaa !5
  %add = add nsw i32 %4, %3
  store i32 %add, ptr @sum, align 4, !tbaa !5
  call void @llvm.lifetime.start.p0(i64 40000, ptr nonnull %mtuta) #6
  %wide.trip.count82 = zext i32 %n to i64
  br label %for.cond85

for.body40:                                       ; preds = %for.cond36
  %arrayidx44 = getelementptr inbounds nuw [100 x i32], ptr %m, i64 0, i64 %indvars.iv74
  %5 = load i32, ptr %arrayidx44, align 4, !tbaa !5
  br label %for.cond46

for.cond46:                                       ; preds = %for.body50, %for.body40
  %indvars.iv64 = phi i64 [ %indvars.iv.next65, %for.body50 ], [ 0, %for.body40 ]
  %min41.0 = phi i32 [ %spec.select52, %for.body50 ], [ %5, %for.body40 ]
  %exitcond68.not = icmp eq i64 %indvars.iv64, %wide.trip.count67
  br i1 %exitcond68.not, label %for.cond66, label %for.body50

for.body50:                                       ; preds = %for.cond46
  %arrayidx54 = getelementptr inbounds nuw [100 x i32], ptr %m, i64 %indvars.iv64, i64 %indvars.iv74
  %6 = load i32, ptr %arrayidx54, align 4, !tbaa !5
  %spec.select52 = tail call i32 @llvm.smin.i32(i32 %min41.0, i32 %6)
  %indvars.iv.next65 = add nuw nsw i64 %indvars.iv64, 1
  br label %for.cond46, !llvm.loop !19

for.cond66:                                       ; preds = %for.cond46, %for.body70
  %indvars.iv69 = phi i64 [ %indvars.iv.next70, %for.body70 ], [ 0, %for.cond46 ]
  %exitcond73.not = icmp eq i64 %indvars.iv69, %wide.trip.count67
  br i1 %exitcond73.not, label %for.cond.cleanup69, label %for.body70

for.cond.cleanup69:                               ; preds = %for.cond66
  %indvars.iv.next75 = add nuw nsw i64 %indvars.iv74, 1
  br label %for.cond36, !llvm.loop !20

for.body70:                                       ; preds = %for.cond66
  %arrayidx74 = getelementptr inbounds nuw [100 x i32], ptr %m, i64 %indvars.iv69, i64 %indvars.iv74
  %7 = load i32, ptr %arrayidx74, align 4, !tbaa !5
  %sub75 = sub nsw i32 %7, %min41.0
  store i32 %sub75, ptr %arrayidx74, align 4, !tbaa !5
  %indvars.iv.next70 = add nuw nsw i64 %indvars.iv69, 1
  br label %for.cond66, !llvm.loop !21

for.cond85:                                       ; preds = %for.inc118, %for.cond.cleanup39
  %indvars.iv84 = phi i64 [ %indvars.iv.next85, %for.inc118 ], [ 0, %for.cond.cleanup39 ]
  %exitcond88.not = icmp eq i64 %indvars.iv84, %wide.trip.count62
  br i1 %exitcond88.not, label %for.cond.cleanup88, label %for.body89

for.cond.cleanup88:                               ; preds = %for.cond85
  %sub.le = add nsw i32 %n, -1
  call void @_Z11SubtractionPA100_ii(ptr noundef nonnull %mtuta, i32 noundef %sub.le)
  call void @llvm.lifetime.end.p0(i64 40000, ptr nonnull %mtuta) #6
  br label %if.end122

for.body89:                                       ; preds = %for.cond85
  %cmp90 = icmp eq i64 %indvars.iv84, 1
  br i1 %cmp90, label %for.inc118, label %for.cond94.preheader

for.cond94.preheader:                             ; preds = %for.body89
  %cmp106 = icmp ne i64 %indvars.iv84, 0
  %conv.neg = sext i1 %cmp106 to i64
  %sub107 = add i64 %indvars.iv84, %conv.neg
  %sext = shl i64 %sub107, 32
  %idxprom108 = ashr exact i64 %sext, 32
  br label %for.cond94

for.cond94:                                       ; preds = %for.cond94.preheader, %for.inc115
  %indvars.iv79 = phi i64 [ 0, %for.cond94.preheader ], [ %indvars.iv.next80, %for.inc115 ]
  %exitcond83.not = icmp eq i64 %indvars.iv79, %wide.trip.count82
  br i1 %exitcond83.not, label %for.inc118, label %for.body98

for.body98:                                       ; preds = %for.cond94
  %cmp99 = icmp eq i64 %indvars.iv79, 1
  br i1 %cmp99, label %for.inc115, label %if.end101

if.end101:                                        ; preds = %for.body98
  %arrayidx105 = getelementptr inbounds nuw [100 x i32], ptr %m, i64 %indvars.iv84, i64 %indvars.iv79
  %8 = load i32, ptr %arrayidx105, align 4, !tbaa !5
  %cmp110 = icmp ne i64 %indvars.iv79, 0
  %conv111.neg = sext i1 %cmp110 to i64
  %sub112 = add i64 %indvars.iv79, %conv111.neg
  %sext89 = shl i64 %sub112, 32
  %idxprom113 = ashr exact i64 %sext89, 32
  %arrayidx114 = getelementptr inbounds [100 x [100 x i32]], ptr %mtuta, i64 0, i64 %idxprom108, i64 %idxprom113
  store i32 %8, ptr %arrayidx114, align 4, !tbaa !5
  br label %for.inc115

for.inc115:                                       ; preds = %for.body98, %if.end101
  %indvars.iv.next80 = add nuw nsw i64 %indvars.iv79, 1
  br label %for.cond94, !llvm.loop !22

for.inc118:                                       ; preds = %for.cond94, %for.body89
  %indvars.iv.next85 = add nuw nsw i64 %indvars.iv84, 1
  br label %for.cond85, !llvm.loop !23

if.end122:                                        ; preds = %for.cond.cleanup88, %entry
  ret void
}

declare noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEi(ptr noundef nonnull align 8 dereferenceable(8), i32 noundef) local_unnamed_addr #2

declare noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8), i8 noundef signext) local_unnamed_addr #2

; Function Attrs: mustprogress uwtable
declare noundef signext i8 @_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc(ptr noundef nonnull align 8 dereferenceable(264), i8 noundef signext) local_unnamed_addr #4 align 2

declare noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo5flushEv(ptr noundef nonnull align 8 dereferenceable(8)) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smin.i32(i32, i32) #5

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smax.i32(i32, i32) #5

attributes #0 = { mustprogress norecurse uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress nofree nosync nounwind memory(readwrite, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
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
!16 = distinct !{!16, !10, !11}
!17 = distinct !{!17, !10, !11}
!18 = distinct !{!18, !10, !11}
!19 = distinct !{!19, !10, !11}
!20 = distinct !{!20, !10, !11}
!21 = distinct !{!21, !10, !11}
!22 = distinct !{!22, !10, !11}
!23 = distinct !{!23, !10, !11}
