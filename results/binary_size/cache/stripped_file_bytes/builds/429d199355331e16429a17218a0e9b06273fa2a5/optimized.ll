; ModuleID = '<stdin>'
source_filename = "/tmp/tmpj4kq90l1.cpp"
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
  call void @llvm.lifetime.start.p0(i64 noundef 4, ptr noundef nonnull align 4 %n) #6
  call void @llvm.lifetime.start.p0(i64 noundef 40000, ptr noundef nonnull align 16 %a) #6
  %call = call noundef nonnull align 8 dereferenceable(16) ptr @_ZNSirsERi(ptr noundef nonnull align 8 dereferenceable(16) @_ZSt3cin, ptr noundef nonnull align 4 dereferenceable(4) %n)
  %arrayidx96 = getelementptr inbounds nuw i8, ptr %a, i64 404
  br label %for.cond

for.cond:                                         ; preds = %for.end145, %entry
  %k.0 = phi i32 [ 0, %entry ], [ %add149, %for.end145 ]
  %0 = load i32, ptr %n, align 4, !tbaa !5
  %cmp = icmp slt i32 %k.0, %0
  br i1 %cmp, label %for.cond1, label %for.end150

for.cond1:                                        ; preds = %for.cond, %for.end
  %1 = phi i32 [ %4, %for.end ], [ %0, %for.cond ]
  %indvars.iv72 = phi i64 [ %indvars.iv.next73, %for.end ], [ 0, %for.cond ]
  %2 = sext i32 %1 to i64
  %cmp2 = icmp slt i64 %indvars.iv72, %2
  br i1 %cmp2, label %for.cond4, label %for.cond13.preheader

for.cond13.preheader:                             ; preds = %for.cond1
  %3 = zext i32 %1 to i64
  br label %for.cond13

for.cond4:                                        ; preds = %for.cond1, %for.body6
  %4 = phi i32 [ %.pre, %for.body6 ], [ %1, %for.cond1 ]
  %indvars.iv = phi i64 [ %indvars.iv.next, %for.body6 ], [ 0, %for.cond1 ]
  %5 = sext i32 %4 to i64
  %cmp5 = icmp slt i64 %indvars.iv, %5
  br i1 %cmp5, label %for.body6, label %for.end

for.body6:                                        ; preds = %for.cond4
  %arrayidx8 = getelementptr inbounds nuw [100 x [100 x i32]], ptr %a, i64 0, i64 %indvars.iv72, i64 %indvars.iv
  %call9 = call noundef nonnull align 8 dereferenceable(16) ptr @_ZNSirsERi(ptr noundef nonnull align 8 dereferenceable(16) @_ZSt3cin, ptr noundef nonnull align 4 dereferenceable(4) %arrayidx8)
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  %.pre = load i32, ptr %n, align 4, !tbaa !5
  br label %for.cond4, !llvm.loop !9

for.end:                                          ; preds = %for.cond4
  %indvars.iv.next73 = add nuw nsw i64 %indvars.iv72, 1
  br label %for.cond1, !llvm.loop !12

for.cond13:                                       ; preds = %for.cond13.preheader, %if.end142
  %indvars.iv119 = phi i64 [ %3, %for.cond13.preheader ], [ %indvars.iv.next120, %if.end142 ]
  %sum.0 = phi i32 [ 0, %for.cond13.preheader ], [ %add97, %if.end142 ]
  %6 = trunc nuw i64 %indvars.iv119 to i32
  %cmp14 = icmp sgt i32 %6, 1
  br i1 %cmp14, label %for.cond16, label %for.end145

for.cond16:                                       ; preds = %for.cond13, %for.end50
  %indvars.iv83 = phi i64 [ %indvars.iv.next84, %for.end50 ], [ 0, %for.cond13 ]
  %exitcond87.not = icmp eq i64 %indvars.iv83, %indvars.iv119
  br i1 %exitcond87.not, label %for.cond54, label %for.body18

for.body18:                                       ; preds = %for.cond16
  %arrayidx20 = getelementptr inbounds nuw [100 x [100 x i32]], ptr %a, i64 0, i64 %indvars.iv83
  %7 = load i32, ptr %arrayidx20, align 16, !tbaa !5, !invariant.load !13
  br label %for.cond22

for.cond22:                                       ; preds = %for.body24, %for.body18
  %indvars.iv75 = phi i64 [ %indvars.iv.next76, %for.body24 ], [ 1, %for.body18 ]
  %min.0 = phi i32 [ %spec.select, %for.body24 ], [ %7, %for.body18 ]
  %exitcond.not = icmp eq i64 %indvars.iv75, %indvars.iv119
  br i1 %exitcond.not, label %for.cond37.preheader, label %for.body24

for.cond37.preheader:                             ; preds = %for.cond22
  br label %for.cond37

for.body24:                                       ; preds = %for.cond22
  %arrayidx28 = getelementptr inbounds nuw [100 x [100 x i32]], ptr %a, i64 0, i64 %indvars.iv83, i64 %indvars.iv75
  %8 = load i32, ptr %arrayidx28, align 4, !tbaa !5, !invariant.load !13
  %spec.select = call i32 @llvm.smin.i32(i32 %8, i32 %min.0)
  %indvars.iv.next76 = add nuw nsw i64 %indvars.iv75, 1
  br label %for.cond22, !llvm.loop !14

for.cond37:                                       ; preds = %for.cond37.preheader, %for.body39
  %indvars.iv78 = phi i64 [ 0, %for.cond37.preheader ], [ %indvars.iv.next79, %for.body39 ]
  %exitcond82.not = icmp eq i64 %indvars.iv78, %indvars.iv119
  br i1 %exitcond82.not, label %for.end50, label %for.body39

for.body39:                                       ; preds = %for.cond37
  %arrayidx43 = getelementptr inbounds nuw [100 x [100 x i32]], ptr %a, i64 0, i64 %indvars.iv83, i64 %indvars.iv78
  %9 = load i32, ptr %arrayidx43, align 4, !tbaa !5, !invariant.load !13
  %sub = sub nsw i32 %9, %min.0
  store i32 %sub, ptr %arrayidx43, align 4, !tbaa !5
  %indvars.iv.next79 = add nuw nsw i64 %indvars.iv78, 1
  br label %for.cond37, !llvm.loop !15

for.end50:                                        ; preds = %for.cond37
  %indvars.iv.next84 = add nuw nsw i64 %indvars.iv83, 1
  br label %for.cond16, !llvm.loop !16

for.cond54:                                       ; preds = %for.cond16, %for.end91
  %indvars.iv98 = phi i64 [ %indvars.iv.next99, %for.end91 ], [ 0, %for.cond16 ]
  %exitcond102.not = icmp eq i64 %indvars.iv98, %indvars.iv119
  br i1 %exitcond102.not, label %for.end94, label %for.body56

for.body56:                                       ; preds = %for.cond54
  %arrayidx59 = getelementptr inbounds nuw [100 x i32], ptr %a, i64 0, i64 %indvars.iv98
  %10 = load i32, ptr %arrayidx59, align 4, !tbaa !5, !invariant.load !13
  br label %for.cond60

for.cond60:                                       ; preds = %for.body62, %for.body56
  %indvars.iv88 = phi i64 [ %indvars.iv.next89, %for.body62 ], [ 1, %for.body56 ]
  %min.2 = phi i32 [ %spec.select70, %for.body62 ], [ %10, %for.body56 ]
  %exitcond92.not = icmp eq i64 %indvars.iv88, %indvars.iv119
  br i1 %exitcond92.not, label %for.cond77.preheader, label %for.body62

for.cond77.preheader:                             ; preds = %for.cond60
  br label %for.cond77

for.body62:                                       ; preds = %for.cond60
  %arrayidx66 = getelementptr inbounds nuw [100 x [100 x i32]], ptr %a, i64 0, i64 %indvars.iv88, i64 %indvars.iv98
  %11 = load i32, ptr %arrayidx66, align 4, !tbaa !5, !invariant.load !13
  %spec.select70 = call i32 @llvm.smin.i32(i32 %11, i32 %min.2)
  %indvars.iv.next89 = add nuw nsw i64 %indvars.iv88, 1
  br label %for.cond60, !llvm.loop !17

for.cond77:                                       ; preds = %for.cond77.preheader, %for.body79
  %indvars.iv93 = phi i64 [ 0, %for.cond77.preheader ], [ %indvars.iv.next94, %for.body79 ]
  %exitcond97.not = icmp eq i64 %indvars.iv93, %indvars.iv119
  br i1 %exitcond97.not, label %for.end91, label %for.body79

for.body79:                                       ; preds = %for.cond77
  %arrayidx83 = getelementptr inbounds nuw [100 x [100 x i32]], ptr %a, i64 0, i64 %indvars.iv93, i64 %indvars.iv98
  %12 = load i32, ptr %arrayidx83, align 4, !tbaa !5, !invariant.load !13
  %sub84 = sub nsw i32 %12, %min.2
  store i32 %sub84, ptr %arrayidx83, align 4, !tbaa !5
  %indvars.iv.next94 = add nuw nsw i64 %indvars.iv93, 1
  br label %for.cond77, !llvm.loop !18

for.end91:                                        ; preds = %for.cond77
  %indvars.iv.next99 = add nuw nsw i64 %indvars.iv98, 1
  br label %for.cond54, !llvm.loop !19

for.end94:                                        ; preds = %for.cond54
  %13 = load i32, ptr %arrayidx96, align 4, !tbaa !5
  %add97 = add nsw i32 %13, %sum.0
  %cmp98.not = icmp eq i64 %indvars.iv119, 2
  br i1 %cmp98.not, label %if.end142, label %for.cond100

for.cond100:                                      ; preds = %for.end94, %for.body102
  %indvars.iv103 = phi i64 [ %indvars.iv.next104, %for.body102 ], [ 1, %for.end94 ]
  %exitcond107.not = icmp eq i64 %indvars.iv103, %indvars.iv119
  br i1 %exitcond107.not, label %for.cond120, label %for.body102

for.body102:                                      ; preds = %for.cond100
  %indvars.iv.next104 = add nuw nsw i64 %indvars.iv103, 1
  %arrayidx106 = getelementptr inbounds nuw [100 x i32], ptr %a, i64 0, i64 %indvars.iv.next104
  %14 = load i32, ptr %arrayidx106, align 4, !tbaa !5, !invariant.load !13
  %arrayidx109 = getelementptr inbounds nuw [100 x i32], ptr %a, i64 0, i64 %indvars.iv103
  store i32 %14, ptr %arrayidx109, align 4, !tbaa !5
  %arrayidx112 = getelementptr inbounds nuw [100 x [100 x i32]], ptr %a, i64 0, i64 %indvars.iv.next104
  %15 = load i32, ptr %arrayidx112, align 16, !tbaa !5, !invariant.load !13
  %arrayidx115 = getelementptr inbounds nuw [100 x [100 x i32]], ptr %a, i64 0, i64 %indvars.iv103
  store i32 %15, ptr %arrayidx115, align 16, !tbaa !5
  br label %for.cond100, !llvm.loop !20

for.cond120:                                      ; preds = %for.cond123, %for.cond100
  %indvars.iv113 = phi i64 [ 1, %for.cond100 ], [ %indvars.iv.next114, %for.cond123 ]
  %exitcond117.not = icmp eq i64 %indvars.iv113, %indvars.iv119
  br i1 %exitcond117.not, label %if.end142, label %for.cond123.preheader

for.cond123.preheader:                            ; preds = %for.cond120
  %indvars.iv.next114 = add nuw nsw i64 %indvars.iv113, 1
  br label %for.cond123

for.cond123:                                      ; preds = %for.cond123.preheader, %for.body125
  %indvars.iv108 = phi i64 [ 1, %for.cond123.preheader ], [ %indvars.iv.next109, %for.body125 ]
  %exitcond112.not = icmp eq i64 %indvars.iv108, %indvars.iv119
  br i1 %exitcond112.not, label %for.cond120, label %for.body125, !llvm.loop !21

for.body125:                                      ; preds = %for.cond123
  %indvars.iv.next109 = add nuw nsw i64 %indvars.iv108, 1
  %arrayidx131 = getelementptr inbounds nuw [100 x [100 x i32]], ptr %a, i64 0, i64 %indvars.iv.next114, i64 %indvars.iv.next109
  %16 = load i32, ptr %arrayidx131, align 4, !tbaa !5, !invariant.load !13
  %arrayidx135 = getelementptr inbounds nuw [100 x [100 x i32]], ptr %a, i64 0, i64 %indvars.iv113, i64 %indvars.iv108
  store i32 %16, ptr %arrayidx135, align 4, !tbaa !5
  br label %for.cond123, !llvm.loop !22

if.end142:                                        ; preds = %for.cond120, %for.end94
  %indvars.iv.next120 = add nsw i64 %indvars.iv119, -1
  br label %for.cond13, !llvm.loop !23

for.end145:                                       ; preds = %for.cond13
  %call146 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEi(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, i32 noundef %sum.0)
  %call147 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEPFRSoS_E(ptr noundef nonnull align 8 dereferenceable(8) %call146, ptr noundef nonnull @_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_)
  %add149 = add nuw nsw i32 %k.0, 1
  br label %for.cond, !llvm.loop !24

for.end150:                                       ; preds = %for.cond
  call void @llvm.lifetime.end.p0(i64 noundef 40000, ptr noundef nonnull %a) #7
  call void @llvm.lifetime.end.p0(i64 noundef 4, ptr noundef nonnull %n) #7
  ret i32 0
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr captures(none)) #1

declare noundef nonnull align 8 dereferenceable(16) ptr @_ZNSirsERi(ptr noundef nonnull align 8 dereferenceable(16), ptr noundef nonnull align 4 dereferenceable(4)) local_unnamed_addr #2

declare noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEi(ptr noundef nonnull align 8 dereferenceable(8), i32 noundef) local_unnamed_addr #2

; Function Attrs: mustprogress uwtable
declare noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEPFRSoS_E(ptr noundef nonnull align 8 dereferenceable(8), ptr noundef) local_unnamed_addr #3 align 2

; Function Attrs: inlinehint mustprogress uwtable
declare noundef nonnull align 8 dereferenceable(8) ptr @_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_(ptr noundef nonnull align 8 dereferenceable(8)) #4

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr captures(none)) #1

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smin.i32(i32, i32) #5

attributes #0 = { mustprogress norecurse uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { inlinehint mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #6 = { nofree nounwind }
attributes #7 = { nounwind }

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
