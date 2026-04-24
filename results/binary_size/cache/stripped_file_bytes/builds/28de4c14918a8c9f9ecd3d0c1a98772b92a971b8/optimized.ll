; ModuleID = '<stdin>'
source_filename = "/tmp/tmpm4sli50t.cpp"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

module asm ".globl _ZSt21ios_base_library_initv"

%"class.std::basic_istream" = type { ptr, i64, %"class.std::basic_ios" }
%"class.std::basic_ios" = type { %"class.std::ios_base", ptr, i8, i8, ptr, ptr, ptr, ptr }
%"class.std::ios_base" = type { ptr, i64, i64, i32, i32, i32, ptr, %"struct.std::ios_base::_Words", [8 x %"struct.std::ios_base::_Words"], i32, ptr, %"class.std::locale" }
%"struct.std::ios_base::_Words" = type { ptr, i64 }
%"class.std::locale" = type { ptr }
%"class.std::basic_ostream" = type { ptr, %"class.std::basic_ios" }

@a = dso_local global [100 x [100 x i32]] zeroinitializer, align 16
@t = dso_local local_unnamed_addr global i32 0, align 4
@_ZSt3cin = external global %"class.std::basic_istream", align 8
@_ZSt4cout = external global %"class.std::basic_ostream", align 8

; Function Attrs: mustprogress nofree nosync nounwind memory(readwrite, inaccessiblemem: none) uwtable
define dso_local noundef i32 @_Z3sumiPA100_i(i32 noundef %n, ptr noundef captures(none) %a) local_unnamed_addr #0 {
entry:
  %cmp = icmp eq i32 %n, 1
  br i1 %cmp, label %common.ret116, label %for.cond.preheader

for.cond.preheader:                               ; preds = %entry
  %smax = tail call i32 @llvm.smax.i32(i32 %n, i32 0)
  %wide.trip.count78 = zext nneg i32 %smax to i64
  %wide.trip.count = zext i32 %n to i64
  br label %for.cond

for.cond:                                         ; preds = %for.cond.preheader, %for.inc27
  %indvars.iv75 = phi i64 [ 0, %for.cond.preheader ], [ %indvars.iv.next76, %for.inc27 ]
  %exitcond79.not = icmp eq i64 %indvars.iv75, %wide.trip.count78
  br i1 %exitcond79.not, label %for.cond30.preheader, label %for.body

for.cond30.preheader:                             ; preds = %for.cond
  %wide.trip.count83 = zext i32 %n to i64
  br label %for.cond30

for.body:                                         ; preds = %for.cond
  %arrayidx = getelementptr inbounds nuw [100 x i32], ptr %a, i64 %indvars.iv75
  %0 = load i32, ptr %arrayidx, align 4, !tbaa !5
  br label %for.cond3

for.cond3:                                        ; preds = %for.body5, %for.body
  %indvars.iv = phi i64 [ %indvars.iv.next, %for.body5 ], [ 1, %for.body ]
  %min.0 = phi i32 [ %spec.select, %for.body5 ], [ %0, %for.body ]
  %exitcond.not = icmp eq i64 %indvars.iv, %wide.trip.count
  br i1 %exitcond.not, label %for.cond17, label %for.body5

for.body5:                                        ; preds = %for.cond3
  %arrayidx9 = getelementptr inbounds nuw [100 x i32], ptr %a, i64 %indvars.iv75, i64 %indvars.iv
  %1 = load i32, ptr %arrayidx9, align 4, !tbaa !5
  %spec.select = tail call i32 @llvm.smin.i32(i32 %1, i32 %min.0)
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  br label %for.cond3, !llvm.loop !9

for.cond17:                                       ; preds = %for.cond3, %for.body19
  %indvars.iv70 = phi i64 [ %indvars.iv.next71, %for.body19 ], [ 0, %for.cond3 ]
  %exitcond74.not = icmp eq i64 %indvars.iv70, %wide.trip.count
  br i1 %exitcond74.not, label %for.inc27, label %for.body19

for.body19:                                       ; preds = %for.cond17
  %arrayidx23 = getelementptr inbounds nuw [100 x i32], ptr %a, i64 %indvars.iv75, i64 %indvars.iv70
  %2 = load i32, ptr %arrayidx23, align 4, !tbaa !5
  %sub = sub nsw i32 %2, %min.0
  store i32 %sub, ptr %arrayidx23, align 4, !tbaa !5
  %indvars.iv.next71 = add nuw nsw i64 %indvars.iv70, 1
  br label %for.cond17, !llvm.loop !12

for.inc27:                                        ; preds = %for.cond17
  %indvars.iv.next76 = add nuw nsw i64 %indvars.iv75, 1
  br label %for.cond, !llvm.loop !13

for.cond30:                                       ; preds = %for.cond30.preheader, %for.inc64
  %indvars.iv90 = phi i64 [ 0, %for.cond30.preheader ], [ %indvars.iv.next91, %for.inc64 ]
  %exitcond94.not = icmp eq i64 %indvars.iv90, %wide.trip.count78
  br i1 %exitcond94.not, label %for.end66, label %for.body32

for.body32:                                       ; preds = %for.cond30
  %arrayidx35 = getelementptr inbounds nuw [100 x i32], ptr %a, i64 0, i64 %indvars.iv90
  %3 = load i32, ptr %arrayidx35, align 4, !tbaa !5
  br label %for.cond36

for.cond36:                                       ; preds = %for.body38, %for.body32
  %indvars.iv80 = phi i64 [ %indvars.iv.next81, %for.body38 ], [ 1, %for.body32 ]
  %min.2 = phi i32 [ %spec.select68, %for.body38 ], [ %3, %for.body32 ]
  %exitcond84.not = icmp eq i64 %indvars.iv80, %wide.trip.count83
  br i1 %exitcond84.not, label %for.cond53, label %for.body38

for.body38:                                       ; preds = %for.cond36
  %arrayidx42 = getelementptr inbounds nuw [100 x i32], ptr %a, i64 %indvars.iv80, i64 %indvars.iv90
  %4 = load i32, ptr %arrayidx42, align 4, !tbaa !5
  %spec.select68 = tail call i32 @llvm.smin.i32(i32 %4, i32 %min.2)
  %indvars.iv.next81 = add nuw nsw i64 %indvars.iv80, 1
  br label %for.cond36, !llvm.loop !14

for.cond53:                                       ; preds = %for.cond36, %for.body55
  %indvars.iv85 = phi i64 [ %indvars.iv.next86, %for.body55 ], [ 0, %for.cond36 ]
  %exitcond89.not = icmp eq i64 %indvars.iv85, %wide.trip.count83
  br i1 %exitcond89.not, label %for.inc64, label %for.body55

for.body55:                                       ; preds = %for.cond53
  %arrayidx59 = getelementptr inbounds nuw [100 x i32], ptr %a, i64 %indvars.iv85, i64 %indvars.iv90
  %5 = load i32, ptr %arrayidx59, align 4, !tbaa !5
  %sub60 = sub nsw i32 %5, %min.2
  store i32 %sub60, ptr %arrayidx59, align 4, !tbaa !5
  %indvars.iv.next86 = add nuw nsw i64 %indvars.iv85, 1
  br label %for.cond53, !llvm.loop !15

for.inc64:                                        ; preds = %for.cond53
  %indvars.iv.next91 = add nuw nsw i64 %indvars.iv90, 1
  br label %for.cond30, !llvm.loop !16

for.end66:                                        ; preds = %for.cond30
  %arrayidx68 = getelementptr inbounds nuw i8, ptr %a, i64 404
  %6 = load i32, ptr %arrayidx68, align 4, !tbaa !5
  %7 = load i32, ptr @t, align 4, !tbaa !5
  %add = add nsw i32 %7, %6
  store i32 %add, ptr @t, align 4, !tbaa !5
  %sub73 = add i32 %n, -1
  %smax98 = tail call i32 @llvm.smax.i32(i32 %sub73, i32 1)
  %wide.trip.count99 = zext nneg i32 %smax98 to i64
  br label %for.cond69

for.cond69:                                       ; preds = %for.inc88, %for.end66
  %indvars.iv101 = phi i64 [ %indvars.iv.next102, %for.inc88 ], [ 0, %for.end66 ]
  %exitcond105.not = icmp eq i64 %indvars.iv101, %wide.trip.count78
  br i1 %exitcond105.not, label %for.cond91.preheader, label %for.cond72

for.cond91.preheader:                             ; preds = %for.cond69
  %invariant.gep = getelementptr inbounds nuw i8, ptr %a, i64 400
  %wide.trip.count114 = zext nneg i32 %smax98 to i64
  %wide.trip.count109 = zext i32 %sub73 to i64
  br label %for.cond91

for.cond72:                                       ; preds = %for.cond69, %for.body75
  %indvars.iv95 = phi i64 [ %indvars.iv.next96, %for.body75 ], [ 1, %for.cond69 ]
  %exitcond100.not = icmp eq i64 %indvars.iv95, %wide.trip.count99
  br i1 %exitcond100.not, label %for.inc88, label %for.body75

for.body75:                                       ; preds = %for.cond72
  %indvars.iv.next96 = add nuw nsw i64 %indvars.iv95, 1
  %arrayidx80 = getelementptr inbounds nuw [100 x i32], ptr %a, i64 %indvars.iv101, i64 %indvars.iv.next96
  %8 = load i32, ptr %arrayidx80, align 4, !tbaa !5
  %arrayidx84 = getelementptr inbounds nuw [100 x i32], ptr %a, i64 %indvars.iv101, i64 %indvars.iv95
  store i32 %8, ptr %arrayidx84, align 4, !tbaa !5
  br label %for.cond72, !llvm.loop !17

for.inc88:                                        ; preds = %for.cond72
  %indvars.iv.next102 = add nuw nsw i64 %indvars.iv101, 1
  br label %for.cond69, !llvm.loop !18

for.cond91:                                       ; preds = %for.cond91.preheader, %for.inc111
  %indvars.iv111 = phi i64 [ 1, %for.cond91.preheader ], [ %indvars.iv.next112, %for.inc111 ]
  %exitcond115.not = icmp eq i64 %indvars.iv111, %wide.trip.count114
  br i1 %exitcond115.not, label %for.end113, label %for.cond95

for.cond95:                                       ; preds = %for.cond91, %for.body98
  %indvars.iv106 = phi i64 [ %indvars.iv.next107, %for.body98 ], [ 0, %for.cond91 ]
  %exitcond110.not = icmp eq i64 %indvars.iv106, %wide.trip.count109
  br i1 %exitcond110.not, label %for.inc111, label %for.body98

for.body98:                                       ; preds = %for.cond95
  %arrayidx103 = getelementptr inbounds nuw [100 x i32], ptr %invariant.gep, i64 %indvars.iv111, i64 %indvars.iv106
  %9 = load i32, ptr %arrayidx103, align 4, !tbaa !5
  %arrayidx107 = getelementptr inbounds nuw [100 x i32], ptr %a, i64 %indvars.iv111, i64 %indvars.iv106
  store i32 %9, ptr %arrayidx107, align 4, !tbaa !5
  %indvars.iv.next107 = add nuw nsw i64 %indvars.iv106, 1
  br label %for.cond95, !llvm.loop !19

for.inc111:                                       ; preds = %for.cond95
  %indvars.iv.next112 = add nuw nsw i64 %indvars.iv111, 1
  br label %for.cond91, !llvm.loop !20

common.ret116:                                    ; preds = %entry, %for.end113
  %common.ret116.op = phi i32 [ %10, %for.end113 ], [ 1, %entry ]
  ret i32 %common.ret116.op

for.end113:                                       ; preds = %for.cond91
  %call = tail call noundef i32 @_Z3sumiPA100_i(i32 noundef %sub73, ptr noundef %a)
  %10 = load i32, ptr @t, align 4, !tbaa !5
  br label %common.ret116
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr captures(none)) #1

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr captures(none)) #1

; Function Attrs: mustprogress norecurse uwtable
define dso_local noundef i32 @main() local_unnamed_addr #2 {
entry:
  %n = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %n) #6
  %call = call noundef nonnull align 8 dereferenceable(16) ptr @_ZNSirsERi(ptr noundef nonnull align 8 dereferenceable(16) @_ZSt3cin, ptr noundef nonnull align 4 dereferenceable(4) %n)
  br label %for.cond

for.cond:                                         ; preds = %for.end12, %entry
  %i.0 = phi i32 [ 0, %entry ], [ %inc17, %for.end12 ]
  %0 = load i32, ptr %n, align 4, !tbaa !5
  %cmp = icmp slt i32 %i.0, %0
  br i1 %cmp, label %for.cond1, label %for.end18

for.cond1:                                        ; preds = %for.cond, %for.inc10
  %1 = phi i32 [ %3, %for.inc10 ], [ %0, %for.cond ]
  %indvars.iv8 = phi i64 [ %indvars.iv.next9, %for.inc10 ], [ 0, %for.cond ]
  %2 = sext i32 %1 to i64
  %cmp2 = icmp slt i64 %indvars.iv8, %2
  br i1 %cmp2, label %for.cond4, label %for.end12

for.cond4:                                        ; preds = %for.cond1, %for.body6
  %3 = phi i32 [ %.pre, %for.body6 ], [ %1, %for.cond1 ]
  %indvars.iv = phi i64 [ %indvars.iv.next, %for.body6 ], [ 0, %for.cond1 ]
  %4 = sext i32 %3 to i64
  %cmp5 = icmp slt i64 %indvars.iv, %4
  br i1 %cmp5, label %for.body6, label %for.inc10

for.body6:                                        ; preds = %for.cond4
  %arrayidx8 = getelementptr inbounds nuw [100 x [100 x i32]], ptr @a, i64 0, i64 %indvars.iv8, i64 %indvars.iv
  %call9 = call noundef nonnull align 8 dereferenceable(16) ptr @_ZNSirsERi(ptr noundef nonnull align 8 dereferenceable(16) @_ZSt3cin, ptr noundef nonnull align 4 dereferenceable(4) %arrayidx8)
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  %.pre = load i32, ptr %n, align 4, !tbaa !5
  br label %for.cond4, !llvm.loop !21

for.inc10:                                        ; preds = %for.cond4
  %indvars.iv.next9 = add nuw nsw i64 %indvars.iv8, 1
  br label %for.cond1, !llvm.loop !22

for.end12:                                        ; preds = %for.cond1
  %call13 = call noundef i32 @_Z3sumiPA100_i(i32 noundef %1, ptr noundef nonnull @a)
  %call14 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEi(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, i32 noundef %call13)
  %vtable.i = load ptr, ptr %call14, align 8, !tbaa !23
  %vbase.offset.ptr.i = getelementptr i8, ptr %vtable.i, i64 -24
  %vbase.offset.i = load i64, ptr %vbase.offset.ptr.i, align 8
  %add.ptr.i = getelementptr inbounds i8, ptr %call14, i64 %vbase.offset.i
  %call.i6 = call noundef signext i8 @_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc(ptr noundef nonnull align 8 dereferenceable(264) %add.ptr.i, i8 noundef signext 10)
  %call1.i = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8) %call14, i8 noundef signext %call.i6)
  %call.i.i = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo5flushEv(ptr noundef nonnull align 8 dereferenceable(8) %call1.i)
  store i32 0, ptr @t, align 4, !tbaa !5
  %inc17 = add nuw nsw i32 %i.0, 1
  br label %for.cond, !llvm.loop !25

for.end18:                                        ; preds = %for.cond
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %n) #6
  ret i32 0
}

declare noundef nonnull align 8 dereferenceable(16) ptr @_ZNSirsERi(ptr noundef nonnull align 8 dereferenceable(16), ptr noundef nonnull align 4 dereferenceable(4)) local_unnamed_addr #3

declare noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEi(ptr noundef nonnull align 8 dereferenceable(8), i32 noundef) local_unnamed_addr #3

declare noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8), i8 noundef signext) local_unnamed_addr #3

; Function Attrs: mustprogress uwtable
declare noundef signext i8 @_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc(ptr noundef nonnull align 8 dereferenceable(264), i8 noundef signext) local_unnamed_addr #4 align 2

declare noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo5flushEv(ptr noundef nonnull align 8 dereferenceable(8)) local_unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smin.i32(i32, i32) #5

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smax.i32(i32, i32) #5

attributes #0 = { mustprogress nofree nosync nounwind memory(readwrite, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
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
!13 = distinct !{!13, !10, !11}
!14 = distinct !{!14, !10, !11}
!15 = distinct !{!15, !10, !11}
!16 = distinct !{!16, !10, !11}
!17 = distinct !{!17, !10, !11}
!18 = distinct !{!18, !10, !11}
!19 = distinct !{!19, !10, !11}
!20 = distinct !{!20, !10, !11}
!21 = distinct !{!21, !10, !11}
!22 = distinct !{!22, !10, !11}
!23 = !{!24, !24, i64 0}
!24 = !{!"vtable pointer", !8, i64 0}
!25 = distinct !{!25, !10, !11}
