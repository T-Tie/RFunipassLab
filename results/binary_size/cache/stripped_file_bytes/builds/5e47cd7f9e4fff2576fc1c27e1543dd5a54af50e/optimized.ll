; ModuleID = '<stdin>'
source_filename = "/tmp/tmpngm99t_q.cpp"
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
  %num = alloca [200 x [200 x i32]], align 16
  call void @llvm.lifetime.start.p0(i64 noundef 4, ptr noundef nonnull align 4 %n) #8
  call void @llvm.lifetime.start.p0(i64 noundef 160000, ptr noundef nonnull align 16 captures(none) dereferenceable(160000) %num) #8
  call void @llvm.memset.p0.i64(ptr noundef nonnull writeonly align 16 captures(none) dereferenceable(160000) %num, i8 noundef 0, i64 noundef 160000, i1 noundef false) #9
  %call = call noundef nonnull align 8 dereferenceable(16) ptr @_ZNSirsERi(ptr noundef nonnull align 8 dereferenceable(16) @_ZSt3cin, ptr noundef nonnull align 4 dereferenceable(4) %n)
  br label %for.cond

for.cond:                                         ; preds = %for.inc18, %entry
  %i.0 = phi i32 [ 0, %entry ], [ %inc19, %for.inc18 ]
  %0 = load i32, ptr %n, align 4, !tbaa !5
  %cmp.not.not = icmp slt i32 %i.0, %0
  br i1 %cmp.not.not, label %for.cond1, label %for.end20

for.cond1:                                        ; preds = %for.cond, %for.inc12
  %1 = phi i32 [ %3, %for.inc12 ], [ %0, %for.cond ]
  %indvars.iv9 = phi i64 [ %indvars.iv.next10, %for.inc12 ], [ 0, %for.cond ]
  %2 = sext i32 %1 to i64
  %cmp3.not.not = icmp slt i64 %indvars.iv9, %2
  br i1 %cmp3.not.not, label %for.cond5, label %for.inc18

for.cond5:                                        ; preds = %for.cond1, %for.inc
  %3 = phi i32 [ %.pre, %for.inc ], [ %1, %for.cond1 ]
  %indvars.iv = phi i64 [ %indvars.iv.next, %for.inc ], [ 0, %for.cond1 ]
  %4 = sext i32 %3 to i64
  %cmp7.not.not = icmp slt i64 %indvars.iv, %4
  br i1 %cmp7.not.not, label %for.inc, label %for.inc12

for.inc:                                          ; preds = %for.cond5
  %arrayidx10 = getelementptr inbounds nuw [200 x [200 x i32]], ptr %num, i64 0, i64 %indvars.iv9, i64 %indvars.iv
  %call11 = call noundef nonnull align 8 dereferenceable(16) ptr @_ZNSirsERi(ptr noundef nonnull align 8 dereferenceable(16) @_ZSt3cin, ptr noundef nonnull align 4 dereferenceable(4) %arrayidx10)
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  %.pre = load i32, ptr %n, align 4, !tbaa !5
  br label %for.cond5, !llvm.loop !9

for.inc12:                                        ; preds = %for.cond5
  %indvars.iv.next10 = add nuw nsw i64 %indvars.iv9, 1
  br label %for.cond1, !llvm.loop !12

for.inc18:                                        ; preds = %for.cond1
  %call15 = call noundef i32 @_Z3delPA200_ii(ptr nofree noundef nonnull align 16 captures(none) dereferenceable(160000) %num, i32 noundef %1) #10
  %call16 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEi(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, i32 noundef %call15)
  %call17 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEPFRSoS_E(ptr noundef nonnull align 8 dereferenceable(8) %call16, ptr noundef nonnull @_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_)
  %inc19 = add nuw nsw i32 %i.0, 1
  br label %for.cond, !llvm.loop !13

for.end20:                                        ; preds = %for.cond
  call void @llvm.lifetime.end.p0(i64 noundef 160000, ptr noundef nonnull align 16 captures(none) dereferenceable(160000) %num) #10
  call void @llvm.lifetime.end.p0(i64 noundef 4, ptr noundef nonnull %n) #10
  ret i32 0
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr captures(none)) #1

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #2

declare noundef nonnull align 8 dereferenceable(16) ptr @_ZNSirsERi(ptr noundef nonnull align 8 dereferenceable(16), ptr noundef nonnull align 4 dereferenceable(4)) local_unnamed_addr #3

declare noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEi(ptr noundef nonnull align 8 dereferenceable(8), i32 noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define dso_local noundef i32 @_Z3delPA200_ii(ptr nofree noundef captures(none) %num, i32 noundef %n) local_unnamed_addr #4 {
entry:
  %invariant.gep = getelementptr i8, ptr %num, i64 -800
  br label %tailrecurse

tailrecurse:                                      ; preds = %for.cond105, %entry
  %n.tr = phi i32 [ %n, %entry ], [ %sub.le, %for.cond105 ]
  %smax83 = tail call i32 @llvm.smax.i32(i32 %n.tr, i32 noundef 0)
  %wide.trip.count68 = zext nneg i32 %smax83 to i64
  %wide.trip.count = zext i32 %n.tr to i64
  br label %for.cond

for.cond:                                         ; preds = %for.inc31, %tailrecurse
  %indvars.iv65 = phi i64 [ %indvars.iv.next66, %for.inc31 ], [ 0, %tailrecurse ]
  %exitcond69.not = icmp eq i64 %indvars.iv65, %wide.trip.count68
  br i1 %exitcond69.not, label %for.cond34, label %for.cond1

for.cond1:                                        ; preds = %for.cond, %for.body4
  %indvars.iv = phi i64 [ %indvars.iv.next, %for.body4 ], [ 0, %for.cond ]
  %min.0 = phi i32 [ %spec.select, %for.body4 ], [ 1000, %for.cond ]
  %exitcond.not = icmp eq i64 %indvars.iv, %wide.trip.count
  br i1 %exitcond.not, label %for.end, label %for.body4

for.body4:                                        ; preds = %for.cond1
  %arrayidx6 = getelementptr inbounds nuw [200 x i32], ptr %num, i64 %indvars.iv65, i64 %indvars.iv
  %0 = load i32, ptr %arrayidx6, align 4, !tbaa !5, !invariant.load !14
  %spec.select = tail call i32 @llvm.smin.i32(i32 %0, i32 %min.0)
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  br label %for.cond1, !llvm.loop !15

for.end:                                          ; preds = %for.cond1
  %cmp12.not = icmp eq i32 %min.0, 0
  br i1 %cmp12.not, label %for.inc31, label %for.cond14

for.cond14:                                       ; preds = %for.end, %for.inc27
  %indvars.iv60 = phi i64 [ %indvars.iv.next61, %for.inc27 ], [ 0, %for.end ]
  %exitcond64.not = icmp eq i64 %indvars.iv60, %wide.trip.count
  br i1 %exitcond64.not, label %for.inc31, label %for.inc27

for.inc27:                                        ; preds = %for.cond14
  %arrayidx21 = getelementptr inbounds nuw [200 x i32], ptr %num, i64 %indvars.iv65, i64 %indvars.iv60
  %1 = load i32, ptr %arrayidx21, align 4, !tbaa !5, !invariant.load !14
  %sub22 = sub nsw i32 %1, %min.0
  store i32 %sub22, ptr %arrayidx21, align 4, !tbaa !5
  %indvars.iv.next61 = add nuw nsw i64 %indvars.iv60, 1
  br label %for.cond14, !llvm.loop !16

for.inc31:                                        ; preds = %for.cond14, %for.end
  %indvars.iv.next66 = add nuw nsw i64 %indvars.iv65, 1
  br label %for.cond, !llvm.loop !17

for.cond34:                                       ; preds = %for.cond, %for.inc78
  %indvars.iv80 = phi i64 [ %indvars.iv.next81, %for.inc78 ], [ 0, %for.cond ]
  %exitcond85.not = icmp eq i64 %indvars.iv80, %wide.trip.count68
  br i1 %exitcond85.not, label %for.end80, label %for.cond38

for.cond38:                                       ; preds = %for.cond34, %for.inc56
  %indvars.iv70 = phi i64 [ %indvars.iv.next71, %for.inc56 ], [ 0, %for.cond34 ]
  %min.2 = phi i32 [ %min.3, %for.inc56 ], [ 1000, %for.cond34 ]
  %exitcond74.not = icmp eq i64 %indvars.iv70, %wide.trip.count
  br i1 %exitcond74.not, label %for.end58, label %for.body41

for.body41:                                       ; preds = %for.cond38
  %arrayidx45 = getelementptr inbounds nuw [200 x i32], ptr %num, i64 %indvars.iv70, i64 %indvars.iv80
  %2 = load i32, ptr %arrayidx45, align 4, !tbaa !5, !invariant.load !14
  %cmp46 = icmp slt i32 %2, %min.2
  br i1 %cmp46, label %if.then47, label %for.inc56

if.then47:                                        ; preds = %for.body41
  %cmp52 = icmp eq i32 %2, 0
  br i1 %cmp52, label %for.inc78, label %for.inc56

for.inc56:                                        ; preds = %for.body41, %if.then47
  %min.3 = phi i32 [ %2, %if.then47 ], [ %min.2, %for.body41 ]
  %indvars.iv.next71 = add nuw nsw i64 %indvars.iv70, 1
  br label %for.cond38, !llvm.loop !18

for.end58:                                        ; preds = %for.cond38
  %cmp59.not = icmp eq i32 %min.2, 0
  br i1 %cmp59.not, label %for.inc78, label %for.cond61

for.cond61:                                       ; preds = %for.end58, %for.inc74
  %indvars.iv75 = phi i64 [ %indvars.iv.next76, %for.inc74 ], [ 0, %for.end58 ]
  %exitcond79.not = icmp eq i64 %indvars.iv75, %wide.trip.count
  br i1 %exitcond79.not, label %for.inc78, label %for.inc74

for.inc74:                                        ; preds = %for.cond61
  %arrayidx68 = getelementptr inbounds nuw [200 x i32], ptr %num, i64 %indvars.iv75, i64 %indvars.iv80
  %3 = load i32, ptr %arrayidx68, align 4, !tbaa !5, !invariant.load !14
  %sub69 = sub nsw i32 %3, %min.2
  store i32 %sub69, ptr %arrayidx68, align 4, !tbaa !5
  %indvars.iv.next76 = add nuw nsw i64 %indvars.iv75, 1
  br label %for.cond61, !llvm.loop !19

for.inc78:                                        ; preds = %if.then47, %for.cond61, %for.end58
  %indvars.iv.next81 = add nuw nsw i64 %indvars.iv80, 1
  br label %for.cond34, !llvm.loop !20

for.end80:                                        ; preds = %for.cond34
  %smax102 = tail call i32 @llvm.smax.i32(i32 %n.tr, i32 noundef 2)
  %sub.le = add nsw i32 %n.tr, -1
  %cmp83 = icmp eq i32 %n.tr, 2
  br i1 %cmp83, label %cleanup, label %for.cond85.preheader

for.cond85.preheader:                             ; preds = %for.end80
  %smax90 = tail call i32 @llvm.smax.i32(i32 %n.tr, i32 noundef 1)
  %4 = add nuw i32 %smax90, 1
  %wide.trip.count91 = zext i32 %4 to i64
  br label %for.cond85

for.cond85:                                       ; preds = %for.cond85.preheader, %for.inc102
  %indvars.iv86 = phi i64 [ 2, %for.cond85.preheader ], [ %indvars.iv.next87, %for.inc102 ]
  %exitcond92 = icmp eq i64 %indvars.iv86, %wide.trip.count91
  br i1 %exitcond92, label %for.cond105.preheader, label %for.inc102

for.cond105.preheader:                            ; preds = %for.cond85
  %wide.trip.count103 = zext nneg i32 %smax102 to i64
  br label %for.cond105

for.inc102:                                       ; preds = %for.cond85
  %arrayidx90 = getelementptr inbounds nuw [200 x i32], ptr %num, i64 0, i64 %indvars.iv86
  %5 = load i32, ptr %arrayidx90, align 4, !tbaa !5, !invariant.load !14
  %6 = add nsw i64 %indvars.iv86, -1
  %arrayidx94 = getelementptr inbounds [200 x i32], ptr %num, i64 0, i64 %6
  store i32 %5, ptr %arrayidx94, align 4, !tbaa !5
  %arrayidx96 = getelementptr inbounds nuw [200 x i32], ptr %num, i64 %indvars.iv86
  %7 = load i32, ptr %arrayidx96, align 4, !tbaa !5, !invariant.load !14
  %arrayidx100 = getelementptr inbounds [200 x i32], ptr %num, i64 %6
  store i32 %7, ptr %arrayidx100, align 4, !tbaa !5
  %indvars.iv.next87 = add nuw nsw i64 %indvars.iv86, 1
  br label %for.cond85, !llvm.loop !21

for.cond105:                                      ; preds = %for.cond105.preheader, %for.inc126
  %indvars.iv99 = phi i64 [ 2, %for.cond105.preheader ], [ %indvars.iv.next100, %for.inc126 ]
  %exitcond104.not = icmp eq i64 %indvars.iv99, %wide.trip.count103
  br i1 %exitcond104.not, label %tailrecurse, label %for.cond109

for.cond109:                                      ; preds = %for.cond105, %for.inc123
  %indvars.iv93 = phi i64 [ %indvars.iv.next94, %for.inc123 ], [ 2, %for.cond105 ]
  %exitcond98.not = icmp eq i64 %indvars.iv93, %wide.trip.count
  br i1 %exitcond98.not, label %for.inc126, label %for.inc123

for.inc123:                                       ; preds = %for.cond109
  %arrayidx116 = getelementptr inbounds nuw [200 x i32], ptr %num, i64 %indvars.iv99, i64 %indvars.iv93
  %8 = load i32, ptr %arrayidx116, align 4, !tbaa !5, !invariant.load !14
  %9 = add nsw i64 %indvars.iv93, -1
  %arrayidx122 = getelementptr [200 x i32], ptr %invariant.gep, i64 %indvars.iv99, i64 %9
  store i32 %8, ptr %arrayidx122, align 4, !tbaa !5
  %indvars.iv.next94 = add nuw nsw i64 %indvars.iv93, 1
  br label %for.cond109, !llvm.loop !22

for.inc126:                                       ; preds = %for.cond109
  %indvars.iv.next100 = add nuw nsw i64 %indvars.iv99, 1
  br label %for.cond105, !llvm.loop !23

cleanup:                                          ; preds = %for.end80
  %arrayidx82 = getelementptr inbounds nuw i8, ptr %num, i64 804
  %10 = load i32, ptr %arrayidx82, align 4, !tbaa !5, !invariant.load !14
  %11 = add i32 %n, -1
  %accumulator.ret.tr = mul i32 %10, %11
  ret i32 %accumulator.ret.tr
}

; Function Attrs: mustprogress uwtable
declare noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEPFRSoS_E(ptr noundef nonnull align 8 dereferenceable(8), ptr noundef) local_unnamed_addr #5 align 2

; Function Attrs: inlinehint mustprogress uwtable
declare noundef nonnull align 8 dereferenceable(8) ptr @_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_(ptr noundef nonnull align 8 dereferenceable(8)) #6

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr captures(none)) #1

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smin.i32(i32, i32) #7

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smax.i32(i32, i32) #7

attributes #0 = { mustprogress norecurse uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #3 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { mustprogress nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { inlinehint mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #8 = { nofree nounwind willreturn }
attributes #9 = { nofree willreturn }
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
!9 = distinct !{!9, !10, !11}
!10 = !{!"llvm.loop.mustprogress"}
!11 = !{!"llvm.loop.unroll.disable"}
!12 = distinct !{!12, !10, !11}
!13 = distinct !{!13, !10, !11}
!14 = !{}
!15 = distinct !{!15, !10, !11}
!16 = distinct !{!16, !10, !11}
!17 = distinct !{!17, !10, !11}
!18 = distinct !{!18, !10, !11}
!19 = distinct !{!19, !10, !11}
!20 = distinct !{!20, !10, !11}
!21 = distinct !{!21, !10, !11}
!22 = distinct !{!22, !10, !11}
!23 = distinct !{!23, !10, !11}
