; ModuleID = '<stdin>'
source_filename = "/tmp/tmpcuueydtc.cpp"
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
  %a = alloca [100 x [100 x i32]], align 16
  call void @llvm.lifetime.start.p0(i64 noundef 4, ptr noundef nonnull align 4 %n) #5
  call void @llvm.lifetime.start.p0(i64 noundef 40000, ptr noundef nonnull align 16 %a) #5
  %call = call noundef nonnull align 8 dereferenceable(16) ptr @_ZNSirsERi(ptr noundef nonnull align 8 dereferenceable(16) @_ZSt3cin, ptr noundef nonnull align 4 dereferenceable(4) %n)
  %arrayidx96 = getelementptr inbounds nuw i8, ptr %a, i64 404
  br label %for.cond

for.cond:                                         ; preds = %for.inc146, %entry
  %i.0 = phi i32 [ 0, %entry ], [ %inc147, %for.inc146 ]
  %0 = load i32, ptr %n, align 4, !tbaa !5
  %cmp = icmp slt i32 %i.0, %0
  br i1 %cmp, label %for.cond1, label %for.end148

for.cond1:                                        ; preds = %for.cond, %for.inc10
  %1 = phi i32 [ %6, %for.inc10 ], [ %0, %for.cond ]
  %indvars.iv5 = phi i64 [ %indvars.iv.next6, %for.inc10 ], [ 0, %for.cond ]
  %2 = sext i32 %1 to i64
  %cmp2 = icmp slt i64 %indvars.iv5, %2
  br i1 %cmp2, label %for.cond4, label %for.cond13.preheader

for.cond13.preheader:                             ; preds = %for.cond1
  %3 = add i32 %1, -1
  %4 = zext i32 %3 to i64
  %5 = zext i32 %1 to i64
  br label %for.cond13

for.cond4:                                        ; preds = %for.cond1, %for.inc
  %6 = phi i32 [ %.pre, %for.inc ], [ %1, %for.cond1 ]
  %indvars.iv = phi i64 [ %indvars.iv.next, %for.inc ], [ 0, %for.cond1 ]
  %7 = sext i32 %6 to i64
  %cmp5 = icmp slt i64 %indvars.iv, %7
  br i1 %cmp5, label %for.inc, label %for.inc10

for.inc:                                          ; preds = %for.cond4
  %arrayidx8 = getelementptr inbounds nuw [100 x [100 x i32]], ptr %a, i64 0, i64 %indvars.iv5, i64 %indvars.iv
  %call9 = call noundef nonnull align 8 dereferenceable(16) ptr @_ZNSirsERi(ptr noundef nonnull align 8 dereferenceable(16) @_ZSt3cin, ptr noundef nonnull align 4 dereferenceable(4) %arrayidx8)
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  %.pre = load i32, ptr %n, align 4, !tbaa !5
  br label %for.cond4, !llvm.loop !9

for.inc10:                                        ; preds = %for.cond4
  %indvars.iv.next6 = add nuw nsw i64 %indvars.iv5, 1
  br label %for.cond1, !llvm.loop !12

for.cond13:                                       ; preds = %for.cond13.preheader, %for.inc142
  %indvars.iv57 = phi i64 [ %5, %for.cond13.preheader ], [ %indvars.iv.next58, %for.inc142 ]
  %indvars.iv54 = phi i64 [ %4, %for.cond13.preheader ], [ %indvars.iv.next55, %for.inc142 ]
  %sum.0 = phi i32 [ 0, %for.cond13.preheader ], [ %add, %for.inc142 ]
  %8 = trunc nuw i64 %indvars.iv57 to i32
  %cmp14 = icmp sgt i32 %8, 1
  br i1 %cmp14, label %for.cond16, label %for.inc146

for.cond16:                                       ; preds = %for.cond13, %for.inc51
  %indvars.iv16 = phi i64 [ %indvars.iv.next17, %for.inc51 ], [ 0, %for.cond13 ]
  %exitcond20.not = icmp eq i64 %indvars.iv16, %indvars.iv57
  br i1 %exitcond20.not, label %for.cond54, label %for.body18

for.body18:                                       ; preds = %for.cond16
  %arrayidx20 = getelementptr inbounds nuw [100 x [100 x i32]], ptr %a, i64 0, i64 %indvars.iv16
  %9 = load i32, ptr %arrayidx20, align 16, !tbaa !5, !invariant.load !13
  br label %for.cond22

for.cond22:                                       ; preds = %for.body24, %for.body18
  %indvars.iv8 = phi i64 [ %indvars.iv.next9, %for.body24 ], [ 0, %for.body18 ]
  %min.0 = phi i32 [ %spec.select, %for.body24 ], [ %9, %for.body18 ]
  %exitcond.not = icmp eq i64 %indvars.iv8, %indvars.iv57
  br i1 %exitcond.not, label %for.cond37.preheader, label %for.body24

for.cond37.preheader:                             ; preds = %for.cond22
  br label %for.cond37

for.body24:                                       ; preds = %for.cond22
  %arrayidx28 = getelementptr inbounds nuw [100 x [100 x i32]], ptr %a, i64 0, i64 %indvars.iv16, i64 %indvars.iv8
  %10 = load i32, ptr %arrayidx28, align 4, !tbaa !5, !invariant.load !13
  %spec.select = call i32 @llvm.smin.i32(i32 %min.0, i32 %10)
  %indvars.iv.next9 = add nuw nsw i64 %indvars.iv8, 1
  br label %for.cond22, !llvm.loop !14

for.cond37:                                       ; preds = %for.cond37.preheader, %for.inc48
  %indvars.iv11 = phi i64 [ 0, %for.cond37.preheader ], [ %indvars.iv.next12, %for.inc48 ]
  %exitcond15.not = icmp eq i64 %indvars.iv11, %indvars.iv57
  br i1 %exitcond15.not, label %for.inc51, label %for.inc48

for.inc48:                                        ; preds = %for.cond37
  %arrayidx43 = getelementptr inbounds nuw [100 x [100 x i32]], ptr %a, i64 0, i64 %indvars.iv16, i64 %indvars.iv11
  %11 = load i32, ptr %arrayidx43, align 4, !tbaa !5, !invariant.load !13
  %sub = sub nsw i32 %11, %min.0
  store i32 %sub, ptr %arrayidx43, align 4, !tbaa !5
  %indvars.iv.next12 = add nuw nsw i64 %indvars.iv11, 1
  br label %for.cond37, !llvm.loop !15

for.inc51:                                        ; preds = %for.cond37
  %indvars.iv.next17 = add nuw nsw i64 %indvars.iv16, 1
  br label %for.cond16, !llvm.loop !16

for.cond54:                                       ; preds = %for.cond16, %for.inc92
  %indvars.iv31 = phi i64 [ %indvars.iv.next32, %for.inc92 ], [ 0, %for.cond16 ]
  %exitcond35.not = icmp eq i64 %indvars.iv31, %indvars.iv57
  br i1 %exitcond35.not, label %for.end94, label %for.body56

for.body56:                                       ; preds = %for.cond54
  %arrayidx59 = getelementptr inbounds nuw [100 x i32], ptr %a, i64 0, i64 %indvars.iv31
  %12 = load i32, ptr %arrayidx59, align 4, !tbaa !5, !invariant.load !13
  br label %for.cond60

for.cond60:                                       ; preds = %for.body62, %for.body56
  %indvars.iv21 = phi i64 [ %indvars.iv.next22, %for.body62 ], [ 0, %for.body56 ]
  %min.2 = phi i32 [ %spec.select3, %for.body62 ], [ %12, %for.body56 ]
  %exitcond25.not = icmp eq i64 %indvars.iv21, %indvars.iv57
  br i1 %exitcond25.not, label %for.cond77.preheader, label %for.body62

for.cond77.preheader:                             ; preds = %for.cond60
  br label %for.cond77

for.body62:                                       ; preds = %for.cond60
  %arrayidx66 = getelementptr inbounds nuw [100 x [100 x i32]], ptr %a, i64 0, i64 %indvars.iv21, i64 %indvars.iv31
  %13 = load i32, ptr %arrayidx66, align 4, !tbaa !5, !invariant.load !13
  %spec.select3 = call i32 @llvm.smin.i32(i32 %min.2, i32 %13)
  %indvars.iv.next22 = add nuw nsw i64 %indvars.iv21, 1
  br label %for.cond60, !llvm.loop !17

for.cond77:                                       ; preds = %for.cond77.preheader, %for.inc89
  %indvars.iv26 = phi i64 [ 0, %for.cond77.preheader ], [ %indvars.iv.next27, %for.inc89 ]
  %exitcond30.not = icmp eq i64 %indvars.iv26, %indvars.iv57
  br i1 %exitcond30.not, label %for.inc92, label %for.inc89

for.inc89:                                        ; preds = %for.cond77
  %arrayidx83 = getelementptr inbounds nuw [100 x [100 x i32]], ptr %a, i64 0, i64 %indvars.iv26, i64 %indvars.iv31
  %14 = load i32, ptr %arrayidx83, align 4, !tbaa !5, !invariant.load !13
  %sub84 = sub nsw i32 %14, %min.2
  store i32 %sub84, ptr %arrayidx83, align 4, !tbaa !5
  %indvars.iv.next27 = add nuw nsw i64 %indvars.iv26, 1
  br label %for.cond77, !llvm.loop !18

for.inc92:                                        ; preds = %for.cond77
  %indvars.iv.next32 = add nuw nsw i64 %indvars.iv31, 1
  br label %for.cond54, !llvm.loop !19

for.end94:                                        ; preds = %for.cond54
  %15 = load i32, ptr %arrayidx96, align 4, !tbaa !5
  br label %for.cond97

for.cond97:                                       ; preds = %for.inc115, %for.end94
  %indvars.iv36 = phi i64 [ %indvars.iv.next37, %for.inc115 ], [ 1, %for.end94 ]
  %exitcond43.not = icmp eq i64 %indvars.iv36, %indvars.iv54
  br i1 %exitcond43.not, label %for.cond118, label %for.inc115

for.inc115:                                       ; preds = %for.cond97
  %indvars.iv.next37 = add nuw nsw i64 %indvars.iv36, 1
  %arrayidx103 = getelementptr inbounds nuw [100 x [100 x i32]], ptr %a, i64 0, i64 %indvars.iv.next37
  %16 = load i32, ptr %arrayidx103, align 16, !tbaa !5, !invariant.load !13
  %arrayidx106 = getelementptr inbounds nuw [100 x [100 x i32]], ptr %a, i64 0, i64 %indvars.iv36
  store i32 %16, ptr %arrayidx106, align 16, !tbaa !5
  %arrayidx111 = getelementptr inbounds nuw [100 x i32], ptr %a, i64 0, i64 %indvars.iv.next37
  %17 = load i32, ptr %arrayidx111, align 4, !tbaa !5, !invariant.load !13
  %arrayidx114 = getelementptr inbounds nuw [100 x i32], ptr %a, i64 0, i64 %indvars.iv36
  store i32 %17, ptr %arrayidx114, align 4, !tbaa !5
  br label %for.cond97, !llvm.loop !20

for.cond118:                                      ; preds = %for.cond122, %for.cond97
  %indvars.iv49 = phi i64 [ 1, %for.cond97 ], [ %indvars.iv.next50, %for.cond122 ]
  %exitcond53.not = icmp eq i64 %indvars.iv49, %indvars.iv54
  br i1 %exitcond53.not, label %for.inc142, label %for.cond122.preheader

for.cond122.preheader:                            ; preds = %for.cond118
  %indvars.iv.next50 = add nuw nsw i64 %indvars.iv49, 1
  br label %for.cond122

for.cond122:                                      ; preds = %for.cond122.preheader, %for.inc136
  %indvars.iv44 = phi i64 [ 1, %for.cond122.preheader ], [ %indvars.iv.next45, %for.inc136 ]
  %exitcond48.not = icmp eq i64 %indvars.iv44, %indvars.iv54
  br i1 %exitcond48.not, label %for.cond118, label %for.inc136, !llvm.loop !21

for.inc136:                                       ; preds = %for.cond122
  %indvars.iv.next45 = add nuw nsw i64 %indvars.iv44, 1
  %arrayidx131 = getelementptr inbounds nuw [100 x [100 x i32]], ptr %a, i64 0, i64 %indvars.iv.next50, i64 %indvars.iv.next45
  %18 = load i32, ptr %arrayidx131, align 4, !tbaa !5, !invariant.load !13
  %arrayidx135 = getelementptr inbounds nuw [100 x [100 x i32]], ptr %a, i64 0, i64 %indvars.iv49, i64 %indvars.iv44
  store i32 %18, ptr %arrayidx135, align 4, !tbaa !5
  br label %for.cond122, !llvm.loop !22

for.inc142:                                       ; preds = %for.cond118
  %add = add nsw i32 %15, %sum.0
  %indvars.iv.next58 = add nsw i64 %indvars.iv57, -1
  %indvars.iv.next55 = add nsw i64 %indvars.iv54, -1
  br label %for.cond13, !llvm.loop !23

for.inc146:                                       ; preds = %for.cond13
  %call144 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEi(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, i32 noundef %sum.0)
  %call145 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c(ptr noundef nonnull align 8 dereferenceable(8) %call144, i8 noundef signext 10)
  %inc147 = add nuw nsw i32 %i.0, 1
  br label %for.cond, !llvm.loop !24

for.end148:                                       ; preds = %for.cond
  call void @llvm.lifetime.end.p0(i64 noundef 40000, ptr noundef nonnull %a) #6
  call void @llvm.lifetime.end.p0(i64 noundef 4, ptr noundef nonnull %n) #6
  ret i32 0
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr captures(none)) #1

declare noundef nonnull align 8 dereferenceable(16) ptr @_ZNSirsERi(ptr noundef nonnull align 8 dereferenceable(16), ptr noundef nonnull align 4 dereferenceable(4)) local_unnamed_addr #2

; Function Attrs: inlinehint mustprogress uwtable
declare noundef nonnull align 8 dereferenceable(8) ptr @_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c(ptr noundef nonnull align 8 dereferenceable(8), i8 noundef signext) local_unnamed_addr #3

declare noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEi(ptr noundef nonnull align 8 dereferenceable(8), i32 noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr captures(none)) #1

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smin.i32(i32, i32) #4

attributes #0 = { mustprogress norecurse uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { inlinehint mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #5 = { nofree nounwind willreturn }
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
!13 = !{}
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
!24 = distinct !{!24, !10, !11}
