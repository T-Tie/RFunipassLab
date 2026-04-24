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
define dso_local noundef i32 @_Z3sumiPA100_i(i32 noundef %n, ptr nofree noundef captures(none) %a) local_unnamed_addr #0 {
entry:
  %cmp = icmp eq i32 %n, 1
  br i1 %cmp, label %common.ret74, label %for.cond.preheader

for.cond.preheader:                               ; preds = %entry
  %smax = tail call i32 @llvm.smax.i32(i32 noundef %n, i32 noundef 0)
  %wide.trip.count38 = zext nneg i32 %smax to i64
  %wide.trip.count = zext i32 %n to i64
  br label %for.cond

for.cond:                                         ; preds = %for.cond.preheader, %for.inc27
  %indvars.iv35 = phi i64 [ 0, %for.cond.preheader ], [ %indvars.iv.next36, %for.inc27 ]
  %exitcond39.not = icmp eq i64 %indvars.iv35, %wide.trip.count38
  br i1 %exitcond39.not, label %for.cond30, label %for.body

for.body:                                         ; preds = %for.cond
  %arrayidx = getelementptr inbounds nuw [100 x i32], ptr %a, i64 %indvars.iv35
  %0 = load i32, ptr %arrayidx, align 4, !tbaa !5, !invariant.load !9
  br label %for.cond3

for.cond3:                                        ; preds = %for.body5, %for.body
  %indvars.iv = phi i64 [ %indvars.iv.next, %for.body5 ], [ 1, %for.body ]
  %min.0 = phi i32 [ %spec.select, %for.body5 ], [ %0, %for.body ]
  %exitcond.not = icmp eq i64 %indvars.iv, %wide.trip.count
  br i1 %exitcond.not, label %for.cond17.preheader, label %for.body5

for.cond17.preheader:                             ; preds = %for.cond3
  br label %for.cond17

for.body5:                                        ; preds = %for.cond3
  %arrayidx9 = getelementptr inbounds nuw [100 x i32], ptr %a, i64 %indvars.iv35, i64 %indvars.iv
  %1 = load i32, ptr %arrayidx9, align 4, !tbaa !5, !invariant.load !9
  %spec.select = tail call i32 @llvm.smin.i32(i32 %1, i32 %min.0)
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  br label %for.cond3, !llvm.loop !10

for.cond17:                                       ; preds = %for.cond17.preheader, %for.inc24
  %indvars.iv30 = phi i64 [ %indvars.iv.next31, %for.inc24 ], [ 0, %for.cond17.preheader ]
  %exitcond34.not = icmp eq i64 %indvars.iv30, %wide.trip.count
  br i1 %exitcond34.not, label %for.inc27, label %for.inc24

for.inc24:                                        ; preds = %for.cond17
  %arrayidx23 = getelementptr inbounds nuw [100 x i32], ptr %a, i64 %indvars.iv35, i64 %indvars.iv30
  %2 = load i32, ptr %arrayidx23, align 4, !tbaa !5, !invariant.load !9
  %sub = sub nsw i32 %2, %min.0
  store i32 %sub, ptr %arrayidx23, align 4, !tbaa !5
  %indvars.iv.next31 = add nuw nsw i64 %indvars.iv30, 1
  br label %for.cond17, !llvm.loop !13

for.inc27:                                        ; preds = %for.cond17
  %indvars.iv.next36 = add nuw nsw i64 %indvars.iv35, 1
  br label %for.cond, !llvm.loop !14

for.cond30:                                       ; preds = %for.cond, %for.end63
  %indvars.iv50 = phi i64 [ %indvars.iv.next51, %for.end63 ], [ 0, %for.cond ]
  %exitcond54.not = icmp eq i64 %indvars.iv50, %wide.trip.count38
  br i1 %exitcond54.not, label %for.end66, label %for.body32

for.body32:                                       ; preds = %for.cond30
  %arrayidx35 = getelementptr inbounds nuw [100 x i32], ptr %a, i64 0, i64 %indvars.iv50
  %3 = load i32, ptr %arrayidx35, align 4, !tbaa !5, !invariant.load !9
  br label %for.cond36

for.cond36:                                       ; preds = %for.body38, %for.body32
  %indvars.iv40 = phi i64 [ %indvars.iv.next41, %for.body38 ], [ 1, %for.body32 ]
  %min.2 = phi i32 [ %spec.select27, %for.body38 ], [ %3, %for.body32 ]
  %exitcond44.not = icmp eq i64 %indvars.iv40, %wide.trip.count
  br i1 %exitcond44.not, label %for.cond53.preheader, label %for.body38

for.cond53.preheader:                             ; preds = %for.cond36
  br label %for.cond53

for.body38:                                       ; preds = %for.cond36
  %arrayidx42 = getelementptr inbounds nuw [100 x i32], ptr %a, i64 %indvars.iv40, i64 %indvars.iv50
  %4 = load i32, ptr %arrayidx42, align 4, !tbaa !5, !invariant.load !9
  %spec.select27 = tail call i32 @llvm.smin.i32(i32 %4, i32 %min.2)
  %indvars.iv.next41 = add nuw nsw i64 %indvars.iv40, 1
  br label %for.cond36, !llvm.loop !15

for.cond53:                                       ; preds = %for.cond53.preheader, %for.inc61
  %indvars.iv45 = phi i64 [ %indvars.iv.next46, %for.inc61 ], [ 0, %for.cond53.preheader ]
  %exitcond49.not = icmp eq i64 %indvars.iv45, %wide.trip.count
  br i1 %exitcond49.not, label %for.end63, label %for.inc61

for.inc61:                                        ; preds = %for.cond53
  %arrayidx59 = getelementptr inbounds nuw [100 x i32], ptr %a, i64 %indvars.iv45, i64 %indvars.iv50
  %5 = load i32, ptr %arrayidx59, align 4, !tbaa !5, !invariant.load !9
  %sub60 = sub nsw i32 %5, %min.2
  store i32 %sub60, ptr %arrayidx59, align 4, !tbaa !5
  %indvars.iv.next46 = add nuw nsw i64 %indvars.iv45, 1
  br label %for.cond53, !llvm.loop !16

for.end63:                                        ; preds = %for.cond53
  %indvars.iv.next51 = add nuw nsw i64 %indvars.iv50, 1
  br label %for.cond30

for.end66:                                        ; preds = %for.cond30
  %arrayidx68 = getelementptr inbounds nuw i8, ptr %a, i64 404
  %6 = load i32, ptr %arrayidx68, align 4, !tbaa !5, !invariant.load !9
  %7 = load i32, ptr @t, align 4, !tbaa !5
  %add = add nsw i32 %7, %6
  store i32 %add, ptr @t, align 4, !tbaa !5
  %sub73 = add i32 %n, -1
  %smax58 = tail call i32 @llvm.smax.i32(i32 noundef %sub73, i32 noundef 1)
  %wide.trip.count59 = zext nneg i32 %smax58 to i64
  br label %for.cond69

for.cond69:                                       ; preds = %for.inc88, %for.end66
  %indvars.iv61 = phi i64 [ %indvars.iv.next62, %for.inc88 ], [ 0, %for.end66 ]
  %exitcond65.not = icmp eq i64 %indvars.iv61, %wide.trip.count38
  br i1 %exitcond65.not, label %for.cond91.preheader, label %for.cond72

for.cond91.preheader:                             ; preds = %for.cond69
  %cmp93 = icmp sgt i32 %n, 2
  %invariant.gep = getelementptr inbounds nuw i8, ptr %a, i64 400
  br i1 %cmp93, label %for.cond91.preheader28, label %for.end113

for.cond91.preheader28:                           ; preds = %for.cond91.preheader
  %wide.trip.count69 = zext nneg i32 %sub73 to i64
  br label %for.cond91

for.cond72:                                       ; preds = %for.cond69, %for.inc85
  %indvars.iv55 = phi i64 [ %indvars.iv.next56, %for.inc85 ], [ 1, %for.cond69 ]
  %exitcond60.not = icmp eq i64 %indvars.iv55, %wide.trip.count59
  br i1 %exitcond60.not, label %for.inc88, label %for.inc85

for.inc85:                                        ; preds = %for.cond72
  %indvars.iv.next56 = add nuw nsw i64 %indvars.iv55, 1
  %arrayidx80 = getelementptr inbounds nuw [100 x i32], ptr %a, i64 %indvars.iv61, i64 %indvars.iv.next56
  %8 = load i32, ptr %arrayidx80, align 4, !tbaa !5, !invariant.load !9
  %arrayidx84 = getelementptr inbounds nuw [100 x i32], ptr %a, i64 %indvars.iv61, i64 %indvars.iv55
  store i32 %8, ptr %arrayidx84, align 4, !tbaa !5
  br label %for.cond72, !llvm.loop !17

for.inc88:                                        ; preds = %for.cond72
  %indvars.iv.next62 = add nuw nsw i64 %indvars.iv61, 1
  br label %for.cond69, !llvm.loop !18

for.cond91:                                       ; preds = %for.cond91.preheader28, %for.end110
  %indvars.iv71 = phi i64 [ 1, %for.cond91.preheader28 ], [ %indvars.iv.next72, %for.end110 ]
  br label %for.cond95

for.cond95:                                       ; preds = %for.cond91, %for.inc108
  %indvars.iv66 = phi i64 [ 0, %for.cond91 ], [ %indvars.iv.next67, %for.inc108 ]
  %exitcond70.not = icmp eq i64 %indvars.iv66, %wide.trip.count69
  br i1 %exitcond70.not, label %for.end110, label %for.inc108

for.inc108:                                       ; preds = %for.cond95
  %arrayidx103 = getelementptr inbounds nuw [100 x i32], ptr %invariant.gep, i64 %indvars.iv71, i64 %indvars.iv66
  %9 = load i32, ptr %arrayidx103, align 4, !tbaa !5, !invariant.load !9
  %arrayidx107 = getelementptr inbounds nuw [100 x i32], ptr %a, i64 %indvars.iv71, i64 %indvars.iv66
  store i32 %9, ptr %arrayidx107, align 4, !tbaa !5
  %indvars.iv.next67 = add nuw nsw i64 %indvars.iv66, 1
  br label %for.cond95, !llvm.loop !19

for.end110:                                       ; preds = %for.cond95
  %indvars.iv.next72 = add nuw nsw i64 %indvars.iv71, 1
  br label %for.cond91

common.ret74:                                     ; preds = %entry, %for.end113
  %common.ret74.op = phi i32 [ %10, %for.end113 ], [ 1, %entry ]
  ret i32 %common.ret74.op

for.end113:                                       ; preds = %for.cond91.preheader
  %call = tail call noundef i32 @_Z3sumiPA100_i(i32 noundef %sub73, ptr nofree noundef nonnull align 4 captures(none) dereferenceable(408) %a) #8
  %10 = load i32, ptr @t, align 4, !tbaa !5
  br label %common.ret74
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr captures(none)) #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr captures(none)) #1

; Function Attrs: mustprogress norecurse uwtable
define dso_local noundef i32 @main() local_unnamed_addr #2 {
entry:
  %n = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 noundef 4, ptr noundef nonnull align 4 %n) #9
  %call = call noundef nonnull align 8 dereferenceable(16) ptr @_ZNSirsERi(ptr noundef nonnull align 8 dereferenceable(16) @_ZSt3cin, ptr noundef nonnull align 4 dereferenceable(4) %n)
  br label %for.cond

for.cond:                                         ; preds = %for.end12, %entry
  %0 = load i32, ptr %n, align 4, !tbaa !5
  %cmp = icmp sgt i32 %0, 0
  br i1 %cmp, label %for.cond1, label %for.end18

for.cond1:                                        ; preds = %for.cond, %for.end
  %1 = phi i32 [ %2, %for.end ], [ %0, %for.cond ]
  %indvars.iv6 = phi i64 [ %indvars.iv.next7, %for.end ], [ 0, %for.cond ]
  %cmp2 = icmp sgt i32 %1, 0
  br i1 %cmp2, label %for.cond4, label %for.end12

for.cond4:                                        ; preds = %for.cond1, %for.inc
  %2 = phi i32 [ %.pre, %for.inc ], [ %1, %for.cond1 ]
  %indvars.iv = phi i64 [ %indvars.iv.next, %for.inc ], [ 0, %for.cond1 ]
  %3 = sext i32 %2 to i64
  %cmp5 = icmp slt i64 %indvars.iv, %3
  br i1 %cmp5, label %for.inc, label %for.end

for.inc:                                          ; preds = %for.cond4
  %arrayidx8 = getelementptr inbounds nuw [100 x [100 x i32]], ptr @a, i64 0, i64 %indvars.iv6, i64 %indvars.iv
  %call9 = call noundef nonnull align 8 dereferenceable(16) ptr @_ZNSirsERi(ptr noundef nonnull align 8 dereferenceable(16) @_ZSt3cin, ptr noundef nonnull align 4 dereferenceable(4) %arrayidx8)
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  %.pre = load i32, ptr %n, align 4, !tbaa !5
  br label %for.cond4, !llvm.loop !20

for.end:                                          ; preds = %for.cond4
  %indvars.iv.next7 = add nuw nsw i64 %indvars.iv6, 1
  br label %for.cond1

for.end12:                                        ; preds = %for.cond1
  %call13 = call noundef i32 @_Z3sumiPA100_i(i32 noundef %1, ptr nofree noundef nonnull align 16 captures(none) dereferenceable(40000) @a) #10
  %call14 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEi(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, i32 noundef %call13)
  %call15 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEPFRSoS_E(ptr noundef nonnull align 8 dereferenceable(8) %call14, ptr noundef nonnull @_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_)
  store i32 0, ptr @t, align 4, !tbaa !5
  br label %for.cond

for.end18:                                        ; preds = %for.cond
  call void @llvm.lifetime.end.p0(i64 noundef 4, ptr noundef nonnull %n) #10
  ret i32 0
}

declare noundef nonnull align 8 dereferenceable(16) ptr @_ZNSirsERi(ptr noundef nonnull align 8 dereferenceable(16), ptr noundef nonnull align 4 dereferenceable(4)) local_unnamed_addr #3

declare noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEi(ptr noundef nonnull align 8 dereferenceable(8), i32 noundef) local_unnamed_addr #3

; Function Attrs: mustprogress uwtable
declare noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEPFRSoS_E(ptr noundef nonnull align 8 dereferenceable(8), ptr noundef) local_unnamed_addr #4 align 2

; Function Attrs: inlinehint mustprogress uwtable
declare noundef nonnull align 8 dereferenceable(8) ptr @_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_(ptr noundef nonnull align 8 dereferenceable(8)) #5

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite)
declare void @llvm.experimental.noalias.scope.decl(metadata) #6

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smin.i32(i32, i32) #7

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smax.i32(i32, i32) #7

attributes #0 = { mustprogress nofree nosync nounwind memory(readwrite, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { mustprogress norecurse uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { inlinehint mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite) }
attributes #7 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #8 = { nofree nosync nounwind }
attributes #9 = { nofree nounwind }
attributes #10 = { nounwind }

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
!9 = !{}
!10 = distinct !{!10, !11, !12}
!11 = !{!"llvm.loop.mustprogress"}
!12 = !{!"llvm.loop.unroll.disable"}
!13 = distinct !{!13, !11, !12}
!14 = distinct !{!14, !11, !12}
!15 = distinct !{!15, !11, !12}
!16 = distinct !{!16, !11, !12}
!17 = distinct !{!17, !11, !12}
!18 = distinct !{!18, !11, !12}
!19 = distinct !{!19, !11, !12}
!20 = distinct !{!20, !11, !12}
