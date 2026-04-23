; ModuleID = '<stdin>'
source_filename = "/tmp/tmphmeehz_2.cpp"
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
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %n) #6
  %call = call noundef nonnull align 8 dereferenceable(16) ptr @_ZNSirsERi(ptr noundef nonnull align 8 dereferenceable(16) @_ZSt3cin, ptr noundef nonnull align 4 dereferenceable(4) %n)
  %0 = load i32, ptr %n, align 4, !tbaa !5
  br label %while.cond

while.cond:                                       ; preds = %for.end138, %entry
  %n1.0 = phi i32 [ %0, %entry ], [ %dec141, %for.end138 ]
  %tobool.not = icmp eq i32 %n1.0, 0
  br i1 %tobool.not, label %while.end, label %while.body

while.body:                                       ; preds = %while.cond
  %1 = load i32, ptr %n, align 4, !tbaa !5
  %2 = zext i32 %1 to i64
  %3 = call ptr @llvm.stacksave.p0()
  %4 = mul nuw i64 %2, %2
  %vla = alloca i32, i64 %4, align 16
  %.pre = load i32, ptr %n, align 4, !tbaa !5
  br label %for.cond

for.cond:                                         ; preds = %for.inc7, %while.body
  %5 = phi i32 [ %9, %for.inc7 ], [ %.pre, %while.body ]
  %indvars.iv75 = phi i64 [ %indvars.iv.next76, %for.inc7 ], [ 0, %while.body ]
  %6 = sext i32 %5 to i64
  %cmp = icmp slt i64 %indvars.iv75, %6
  br i1 %cmp, label %for.cond1.preheader, label %for.cond10.preheader

for.cond10.preheader:                             ; preds = %for.cond
  %arrayidx93 = getelementptr inbounds nuw i32, ptr %vla, i64 %2
  %arrayidx94 = getelementptr inbounds nuw i8, ptr %arrayidx93, i64 4
  %7 = zext i32 %5 to i64
  br label %for.cond10

for.cond1.preheader:                              ; preds = %for.cond
  %8 = mul nuw nsw i64 %indvars.iv75, %2
  %arrayidx = getelementptr inbounds nuw i32, ptr %vla, i64 %8
  br label %for.cond1

for.cond1:                                        ; preds = %for.cond1.preheader, %for.body3
  %9 = phi i32 [ %5, %for.cond1.preheader ], [ %.pre131, %for.body3 ]
  %indvars.iv = phi i64 [ 0, %for.cond1.preheader ], [ %indvars.iv.next, %for.body3 ]
  %10 = sext i32 %9 to i64
  %cmp2 = icmp slt i64 %indvars.iv, %10
  br i1 %cmp2, label %for.body3, label %for.inc7

for.body3:                                        ; preds = %for.cond1
  %arrayidx5 = getelementptr inbounds nuw i32, ptr %arrayidx, i64 %indvars.iv
  %call6 = call noundef nonnull align 8 dereferenceable(16) ptr @_ZNSirsERi(ptr noundef nonnull align 8 dereferenceable(16) @_ZSt3cin, ptr noundef nonnull align 4 dereferenceable(4) %arrayidx5)
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  %.pre131 = load i32, ptr %n, align 4, !tbaa !5
  br label %for.cond1, !llvm.loop !9

for.inc7:                                         ; preds = %for.cond1
  %indvars.iv.next76 = add nuw nsw i64 %indvars.iv75, 1
  br label %for.cond, !llvm.loop !12

for.cond10:                                       ; preds = %for.cond10.preheader, %for.inc137
  %indvars.iv128 = phi i64 [ %7, %for.cond10.preheader ], [ %indvars.iv.next129, %for.inc137 ]
  %sum.0 = phi i32 [ 0, %for.cond10.preheader ], [ %add, %for.inc137 ]
  %11 = trunc nuw i64 %indvars.iv128 to i32
  %cmp11 = icmp sgt i32 %11, 1
  br i1 %cmp11, label %for.cond13, label %for.end138

for.cond13:                                       ; preds = %for.cond10, %for.end47
  %indvars.iv86 = phi i64 [ %indvars.iv.next87, %for.end47 ], [ 0, %for.cond10 ]
  %exitcond90.not = icmp eq i64 %indvars.iv86, %indvars.iv128
  br i1 %exitcond90.not, label %for.cond51, label %for.body15

for.body15:                                       ; preds = %for.cond13
  %12 = mul nuw nsw i64 %indvars.iv86, %2
  %arrayidx17 = getelementptr inbounds nuw i32, ptr %vla, i64 %12
  %13 = load i32, ptr %arrayidx17, align 4, !tbaa !5
  br label %for.cond19

for.cond19:                                       ; preds = %for.body21, %for.body15
  %indvars.iv78 = phi i64 [ %indvars.iv.next79, %for.body21 ], [ 1, %for.body15 ]
  %min.0 = phi i32 [ %spec.select, %for.body21 ], [ %13, %for.body15 ]
  %exitcond.not = icmp eq i64 %indvars.iv78, %indvars.iv128
  br i1 %exitcond.not, label %for.cond34, label %for.body21

for.body21:                                       ; preds = %for.cond19
  %arrayidx25 = getelementptr inbounds nuw i32, ptr %arrayidx17, i64 %indvars.iv78
  %14 = load i32, ptr %arrayidx25, align 4, !tbaa !5
  %spec.select = call i32 @llvm.smin.i32(i32 %14, i32 %min.0)
  %indvars.iv.next79 = add nuw nsw i64 %indvars.iv78, 1
  br label %for.cond19, !llvm.loop !13

for.cond34:                                       ; preds = %for.cond19, %for.body36
  %indvars.iv81 = phi i64 [ %indvars.iv.next82, %for.body36 ], [ 0, %for.cond19 ]
  %exitcond85.not = icmp eq i64 %indvars.iv81, %indvars.iv128
  br i1 %exitcond85.not, label %for.end47, label %for.body36

for.body36:                                       ; preds = %for.cond34
  %arrayidx40 = getelementptr inbounds nuw i32, ptr %arrayidx17, i64 %indvars.iv81
  %15 = load i32, ptr %arrayidx40, align 4, !tbaa !5
  %sub = sub nsw i32 %15, %min.0
  store i32 %sub, ptr %arrayidx40, align 4, !tbaa !5
  %indvars.iv.next82 = add nuw nsw i64 %indvars.iv81, 1
  br label %for.cond34, !llvm.loop !14

for.end47:                                        ; preds = %for.cond34
  %indvars.iv.next87 = add nuw nsw i64 %indvars.iv86, 1
  br label %for.cond13, !llvm.loop !15

for.cond51:                                       ; preds = %for.cond13, %for.end89
  %indvars.iv101 = phi i64 [ %indvars.iv.next102, %for.end89 ], [ 0, %for.cond13 ]
  %exitcond105.not = icmp eq i64 %indvars.iv101, %indvars.iv128
  br i1 %exitcond105.not, label %for.end92, label %for.body53

for.body53:                                       ; preds = %for.cond51
  %arrayidx57 = getelementptr inbounds nuw i32, ptr %vla, i64 %indvars.iv101
  %16 = load i32, ptr %arrayidx57, align 4, !tbaa !5
  br label %for.cond58

for.cond58:                                       ; preds = %for.body60, %for.body53
  %indvars.iv91 = phi i64 [ %indvars.iv.next92, %for.body60 ], [ 1, %for.body53 ]
  %min54.0 = phi i32 [ %spec.select68, %for.body60 ], [ %16, %for.body53 ]
  %exitcond95.not = icmp eq i64 %indvars.iv91, %indvars.iv128
  br i1 %exitcond95.not, label %for.cond75, label %for.body60

for.body60:                                       ; preds = %for.cond58
  %17 = mul nuw nsw i64 %indvars.iv91, %2
  %gep = getelementptr inbounds nuw i32, ptr %arrayidx57, i64 %17
  %18 = load i32, ptr %gep, align 4, !tbaa !5
  %spec.select68 = call i32 @llvm.smin.i32(i32 %18, i32 %min54.0)
  %indvars.iv.next92 = add nuw nsw i64 %indvars.iv91, 1
  br label %for.cond58, !llvm.loop !16

for.cond75:                                       ; preds = %for.cond58, %for.body77
  %indvars.iv96 = phi i64 [ %indvars.iv.next97, %for.body77 ], [ 0, %for.cond58 ]
  %exitcond100.not = icmp eq i64 %indvars.iv96, %indvars.iv128
  br i1 %exitcond100.not, label %for.end89, label %for.body77

for.body77:                                       ; preds = %for.cond75
  %19 = mul nuw nsw i64 %indvars.iv96, %2
  %gep71 = getelementptr inbounds nuw i32, ptr %arrayidx57, i64 %19
  %20 = load i32, ptr %gep71, align 4, !tbaa !5
  %sub82 = sub nsw i32 %20, %min54.0
  store i32 %sub82, ptr %gep71, align 4, !tbaa !5
  %indvars.iv.next97 = add nuw nsw i64 %indvars.iv96, 1
  br label %for.cond75, !llvm.loop !17

for.end89:                                        ; preds = %for.cond75
  %indvars.iv.next102 = add nuw nsw i64 %indvars.iv101, 1
  br label %for.cond51, !llvm.loop !18

for.end92:                                        ; preds = %for.cond51
  %21 = load i32, ptr %arrayidx94, align 4, !tbaa !5
  br label %for.cond95

for.cond95:                                       ; preds = %for.inc113, %for.end92
  %indvars.iv111 = phi i64 [ %indvars.iv.next112, %for.inc113 ], [ 2, %for.end92 ]
  %exitcond115.not = icmp eq i64 %indvars.iv111, %indvars.iv128
  br i1 %exitcond115.not, label %for.cond116, label %for.cond98.preheader

for.cond98.preheader:                             ; preds = %for.cond95
  %invariant.gep72 = getelementptr inbounds nuw i32, ptr %vla, i64 %indvars.iv111
  br label %for.cond98

for.cond98:                                       ; preds = %for.cond98.preheader, %for.body100
  %indvars.iv106 = phi i64 [ 0, %for.cond98.preheader ], [ %indvars.iv.next107, %for.body100 ]
  %exitcond110.not = icmp eq i64 %indvars.iv106, %indvars.iv128
  br i1 %exitcond110.not, label %for.inc113, label %for.body100

for.body100:                                      ; preds = %for.cond98
  %22 = mul nuw nsw i64 %indvars.iv106, %2
  %gep73 = getelementptr inbounds nuw i32, ptr %invariant.gep72, i64 %22
  %23 = load i32, ptr %gep73, align 4, !tbaa !5
  %arrayidx109 = getelementptr i8, ptr %gep73, i64 -4
  store i32 %23, ptr %arrayidx109, align 4, !tbaa !5
  %indvars.iv.next107 = add nuw nsw i64 %indvars.iv106, 1
  br label %for.cond98, !llvm.loop !19

for.inc113:                                       ; preds = %for.cond98
  %indvars.iv.next112 = add nuw nsw i64 %indvars.iv111, 1
  br label %for.cond95, !llvm.loop !20

for.cond116:                                      ; preds = %for.cond95, %for.inc134
  %indvars.iv121 = phi i64 [ %indvars.iv.next122, %for.inc134 ], [ 2, %for.cond95 ]
  %exitcond126.not = icmp eq i64 %indvars.iv121, %indvars.iv128
  br i1 %exitcond126.not, label %for.inc137, label %for.cond119.preheader

for.cond119.preheader:                            ; preds = %for.cond116
  %24 = mul nuw nsw i64 %indvars.iv121, %2
  %arrayidx123 = getelementptr inbounds nuw i32, ptr %vla, i64 %24
  %25 = add nsw i64 %indvars.iv121, -1
  %26 = mul nuw nsw i64 %25, %2
  %arrayidx128 = getelementptr inbounds i32, ptr %vla, i64 %26
  br label %for.cond119

for.cond119:                                      ; preds = %for.cond119.preheader, %for.body121
  %indvars.iv116 = phi i64 [ 0, %for.cond119.preheader ], [ %indvars.iv.next117, %for.body121 ]
  %exitcond120.not = icmp eq i64 %indvars.iv116, %indvars.iv128
  br i1 %exitcond120.not, label %for.inc134, label %for.body121

for.body121:                                      ; preds = %for.cond119
  %arrayidx125 = getelementptr inbounds nuw i32, ptr %arrayidx123, i64 %indvars.iv116
  %27 = load i32, ptr %arrayidx125, align 4, !tbaa !5
  %arrayidx130 = getelementptr inbounds nuw i32, ptr %arrayidx128, i64 %indvars.iv116
  store i32 %27, ptr %arrayidx130, align 4, !tbaa !5
  %indvars.iv.next117 = add nuw nsw i64 %indvars.iv116, 1
  br label %for.cond119, !llvm.loop !21

for.inc134:                                       ; preds = %for.cond119
  %indvars.iv.next122 = add nuw nsw i64 %indvars.iv121, 1
  br label %for.cond116, !llvm.loop !22

for.inc137:                                       ; preds = %for.cond116
  %add = add nsw i32 %21, %sum.0
  %indvars.iv.next129 = add nsw i64 %indvars.iv128, -1
  br label %for.cond10, !llvm.loop !23

for.end138:                                       ; preds = %for.cond10
  %call139 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEi(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, i32 noundef %sum.0)
  %vtable.i = load ptr, ptr %call139, align 8, !tbaa !24
  %vbase.offset.ptr.i = getelementptr i8, ptr %vtable.i, i64 -24
  %vbase.offset.i = load i64, ptr %vbase.offset.ptr.i, align 8
  %add.ptr.i = getelementptr inbounds i8, ptr %call139, i64 %vbase.offset.i
  %call.i69 = call noundef signext i8 @_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc(ptr noundef nonnull align 8 dereferenceable(264) %add.ptr.i, i8 noundef signext 10)
  %call1.i = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8) %call139, i8 noundef signext %call.i69)
  %call.i.i = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo5flushEv(ptr noundef nonnull align 8 dereferenceable(8) %call1.i)
  %dec141 = add nsw i32 %n1.0, -1
  call void @llvm.stackrestore.p0(ptr %3)
  br label %while.cond, !llvm.loop !26

while.end:                                        ; preds = %while.cond
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %n) #6
  ret i32 0
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr captures(none)) #1

declare noundef nonnull align 8 dereferenceable(16) ptr @_ZNSirsERi(ptr noundef nonnull align 8 dereferenceable(16), ptr noundef nonnull align 4 dereferenceable(4)) local_unnamed_addr #2

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn
declare ptr @llvm.stacksave.p0() #3

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr captures(none)) #1

declare noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEi(ptr noundef nonnull align 8 dereferenceable(8), i32 noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn
declare void @llvm.stackrestore.p0(ptr) #3

declare noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8), i8 noundef signext) local_unnamed_addr #2

; Function Attrs: mustprogress uwtable
declare noundef signext i8 @_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc(ptr noundef nonnull align 8 dereferenceable(264), i8 noundef signext) local_unnamed_addr #4 align 2

declare noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo5flushEv(ptr noundef nonnull align 8 dereferenceable(8)) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smin.i32(i32, i32) #5

attributes #0 = { mustprogress norecurse uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress nocallback nofree nosync nounwind willreturn }
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
!23 = distinct !{!23, !10, !11}
!24 = !{!25, !25, i64 0}
!25 = !{!"vtable pointer", !8, i64 0}
!26 = distinct !{!26, !10, !11}
