; ModuleID = '<stdin>'
source_filename = "/tmp/tmp0k563jtq.cpp"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

module asm ".globl _ZSt21ios_base_library_initv"

%"class.std::basic_istream" = type { ptr, i64, %"class.std::basic_ios" }
%"class.std::basic_ios" = type { %"class.std::ios_base", ptr, i8, i8, ptr, ptr, ptr, ptr }
%"class.std::ios_base" = type { ptr, i64, i64, i32, i32, i32, ptr, %"struct.std::ios_base::_Words", [8 x %"struct.std::ios_base::_Words"], i32, ptr, %"class.std::locale" }
%"struct.std::ios_base::_Words" = type { ptr, i64 }
%"class.std::locale" = type { ptr }
%"class.std::basic_ostream" = type { ptr, %"class.std::basic_ios" }

@arr = dso_local global [100 x [100 x i32]] zeroinitializer, align 16
@_ZSt3cin = external global %"class.std::basic_istream", align 8
@_ZSt4cout = external global %"class.std::basic_ostream", align 8
@.str = private unnamed_addr constant [2 x i8] c" \00", align 1

; Function Attrs: mustprogress norecurse uwtable
define dso_local noundef i32 @main(i32 noundef %argc, ptr nofree noundef readnone captures(none) %argv) local_unnamed_addr #0 {
entry:
  %n = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 noundef 4, ptr noundef nonnull align 4 %n) #8
  %call = call noundef nonnull align 8 dereferenceable(16) ptr @_ZNSirsERi(ptr noundef nonnull align 8 dereferenceable(16) @_ZSt3cin, ptr noundef nonnull align 4 dereferenceable(4) %n)
  br label %for.cond

for.cond:                                         ; preds = %for.body, %entry
  %i.0 = phi i32 [ 0, %entry ], [ %inc.i, %for.body ]
  %0 = load i32, ptr %n, align 4, !tbaa !5
  %cmp = icmp slt i32 %i.0, %0
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  call void @_Z5solvei(i32 noundef %0)
  %inc.i = add nuw nsw i32 %i.0, 1
  br label %for.cond

for.end:                                          ; preds = %for.cond
  call void @llvm.lifetime.end.p0(i64 noundef 4, ptr noundef nonnull %n) #9
  ret i32 0
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr captures(none)) #1

declare noundef nonnull align 8 dereferenceable(16) ptr @_ZNSirsERi(ptr noundef nonnull align 8 dereferenceable(16), ptr noundef nonnull align 4 dereferenceable(4)) local_unnamed_addr #2

; Function Attrs: mustprogress uwtable
define dso_local void @_Z5solvei(i32 noundef %n) local_unnamed_addr #3 {
entry:
  tail call void @_Z7arrayini(i32 noundef %n)
  %call = tail call noundef i32 @_Z9down_casti(i32 noundef %n) #9
  %call1 = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEi(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, i32 noundef %call)
  %call2 = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEPFRSoS_E(ptr noundef nonnull align 8 dereferenceable(8) %call1, ptr noundef nonnull @_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_)
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr captures(none)) #1

; Function Attrs: mustprogress uwtable
define dso_local void @_Z7arrayini(i32 noundef %n) local_unnamed_addr #3 {
entry:
  %smax = call i32 @llvm.smax.i32(i32 %n, i32 0)
  %wide.trip.count9 = zext nneg i32 %smax to i64
  %wide.trip.count = zext i32 %n to i64
  br label %for.cond

for.cond:                                         ; preds = %for.end, %entry
  %indvars.iv6 = phi i64 [ %indvars.iv.next7, %for.end ], [ 0, %entry ]
  %exitcond10.not = icmp eq i64 %indvars.iv6, %wide.trip.count9
  br i1 %exitcond10.not, label %for.end9, label %for.cond1

for.cond1:                                        ; preds = %for.cond, %for.inc
  %indvars.iv = phi i64 [ %indvars.iv.next, %for.inc ], [ 0, %for.cond ]
  %exitcond.not = icmp eq i64 %indvars.iv, %wide.trip.count
  br i1 %exitcond.not, label %for.end, label %for.inc

for.inc:                                          ; preds = %for.cond1
  %arrayidx6 = getelementptr inbounds nuw [100 x [100 x i32]], ptr @arr, i64 0, i64 %indvars.iv6, i64 %indvars.iv
  %call = tail call noundef nonnull align 8 dereferenceable(16) ptr @_ZNSirsERi(ptr noundef nonnull align 8 dereferenceable(16) @_ZSt3cin, ptr noundef nonnull align 4 dereferenceable(4) %arrayidx6)
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  br label %for.cond1, !llvm.loop !9

for.end:                                          ; preds = %for.cond1
  %indvars.iv.next7 = add nuw nsw i64 %indvars.iv6, 1
  br label %for.cond

for.end9:                                         ; preds = %for.cond
  ret void
}

declare noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEi(ptr noundef nonnull align 8 dereferenceable(8), i32 noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree norecurse nosync nounwind memory(readwrite, argmem: none, inaccessiblemem: none) uwtable
define dso_local noundef i32 @_Z9down_casti(i32 noundef %n) local_unnamed_addr #4 {
entry:
  br label %tailrecurse

tailrecurse:                                      ; preds = %for.end119, %entry
  %accumulator.tr = phi i32 [ 0, %entry ], [ %add, %for.end119 ]
  %n.tr = phi i32 [ %n, %entry ], [ %sub120, %for.end119 ]
  %smax86 = call i32 @llvm.smax.i32(i32 %n.tr, i32 2)
  %cmp = icmp eq i32 %n.tr, 1
  br i1 %cmp, label %return, label %for.cond.preheader

for.cond.preheader:                               ; preds = %tailrecurse
  %smax62 = call i32 @llvm.smax.i32(i32 %n.tr, i32 0)
  %wide.trip.count47 = zext nneg i32 %smax62 to i64
  %wide.trip.count = zext i32 %n.tr to i64
  br label %for.cond

for.cond:                                         ; preds = %for.cond.preheader, %for.end26
  %indvars.iv44 = phi i64 [ 0, %for.cond.preheader ], [ %indvars.iv.next45, %for.end26 ]
  %exitcond48.not = icmp eq i64 %indvars.iv44, %wide.trip.count47
  br i1 %exitcond48.not, label %for.cond31.preheader, label %for.cond2

for.cond31.preheader:                             ; preds = %for.cond
  br label %for.cond31

for.cond2:                                        ; preds = %for.cond, %for.body5
  %indvars.iv = phi i64 [ %indvars.iv.next, %for.body5 ], [ 0, %for.cond ]
  %min.0 = phi i32 [ %spec.select, %for.body5 ], [ 65535, %for.cond ]
  %exitcond.not = icmp eq i64 %indvars.iv, %wide.trip.count
  br i1 %exitcond.not, label %for.cond16.preheader, label %for.body5

for.cond16.preheader:                             ; preds = %for.cond2
  br label %for.cond16

for.body5:                                        ; preds = %for.cond2
  %arrayidx7 = getelementptr inbounds nuw [100 x [100 x i32]], ptr @arr, i64 0, i64 %indvars.iv44, i64 %indvars.iv
  %0 = load i32, ptr %arrayidx7, align 4, !tbaa !5, !invariant.load !12
  %spec.select = tail call i32 @llvm.smin.i32(i32 %0, i32 %min.0)
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  br label %for.cond2

for.cond16:                                       ; preds = %for.cond16.preheader, %for.inc24
  %indvars.iv39 = phi i64 [ 0, %for.cond16.preheader ], [ %indvars.iv.next40, %for.inc24 ]
  %exitcond43.not = icmp eq i64 %indvars.iv39, %wide.trip.count
  br i1 %exitcond43.not, label %for.end26, label %for.inc24

for.inc24:                                        ; preds = %for.cond16
  %arrayidx23 = getelementptr inbounds nuw [100 x [100 x i32]], ptr @arr, i64 0, i64 %indvars.iv44, i64 %indvars.iv39
  %1 = load i32, ptr %arrayidx23, align 4, !tbaa !5, !invariant.load !12
  %sub = sub nsw i32 %1, %min.0
  store i32 %sub, ptr %arrayidx23, align 4, !tbaa !5
  %indvars.iv.next40 = add nuw nsw i64 %indvars.iv39, 1
  br label %for.cond16, !llvm.loop !13

for.end26:                                        ; preds = %for.cond16
  %indvars.iv.next45 = add nuw nsw i64 %indvars.iv44, 1
  br label %for.cond

for.cond31:                                       ; preds = %for.cond31.preheader, %for.inc67
  %indvars.iv59 = phi i64 [ 0, %for.cond31.preheader ], [ %indvars.iv.next60, %for.inc67 ]
  %exitcond64.not = icmp eq i64 %indvars.iv59, %wide.trip.count47
  br i1 %exitcond64.not, label %for.end69, label %for.cond36

for.cond36:                                       ; preds = %for.cond31, %for.body39
  %indvars.iv49 = phi i64 [ %indvars.iv.next50, %for.body39 ], [ 0, %for.cond31 ]
  %min.2 = phi i32 [ %spec.select37, %for.body39 ], [ 65535, %for.cond31 ]
  %exitcond53.not = icmp eq i64 %indvars.iv49, %wide.trip.count
  br i1 %exitcond53.not, label %for.cond55.preheader, label %for.body39

for.cond55.preheader:                             ; preds = %for.cond36
  br label %for.cond55

for.body39:                                       ; preds = %for.cond36
  %arrayidx43 = getelementptr inbounds nuw [100 x [100 x i32]], ptr @arr, i64 0, i64 %indvars.iv49, i64 %indvars.iv59
  %2 = load i32, ptr %arrayidx43, align 4, !tbaa !5, !invariant.load !12
  %spec.select37 = tail call i32 @llvm.smin.i32(i32 %2, i32 %min.2)
  %indvars.iv.next50 = add nuw nsw i64 %indvars.iv49, 1
  br label %for.cond36

for.cond55:                                       ; preds = %for.cond55.preheader, %for.inc64
  %indvars.iv54 = phi i64 [ 0, %for.cond55.preheader ], [ %indvars.iv.next55, %for.inc64 ]
  %exitcond58.not = icmp eq i64 %indvars.iv54, %wide.trip.count
  br i1 %exitcond58.not, label %for.inc67, label %for.inc64

for.inc64:                                        ; preds = %for.cond55
  %arrayidx62 = getelementptr inbounds nuw [100 x [100 x i32]], ptr @arr, i64 0, i64 %indvars.iv54, i64 %indvars.iv59
  %3 = load i32, ptr %arrayidx62, align 4, !tbaa !5, !invariant.load !12
  %sub63 = sub nsw i32 %3, %min.2
  store i32 %sub63, ptr %arrayidx62, align 4, !tbaa !5
  %indvars.iv.next55 = add nuw nsw i64 %indvars.iv54, 1
  br label %for.cond55, !llvm.loop !14

for.inc67:                                        ; preds = %for.cond55
  %indvars.iv.next60 = add nuw nsw i64 %indvars.iv59, 1
  br label %for.cond31, !llvm.loop !15

for.end69:                                        ; preds = %for.cond31
  %4 = load i32, ptr getelementptr inbounds nuw (i8, ptr @arr, i64 404), align 4, !tbaa !5
  %wide.trip.count75 = zext nneg i32 %smax86 to i64
  br label %for.cond71

for.cond71:                                       ; preds = %for.end91, %for.end69
  %indvars.iv70 = phi i64 [ %indvars.iv.next71, %for.end91 ], [ 2, %for.end69 ]
  %exitcond76.not = icmp eq i64 %indvars.iv70, %wide.trip.count75
  br i1 %exitcond76.not, label %for.cond96.preheader, label %for.cond76.preheader

for.cond96.preheader:                             ; preds = %for.cond71
  br label %for.cond96

for.cond76.preheader:                             ; preds = %for.cond71
  %5 = add nsw i64 %indvars.iv70, -1
  br label %for.cond76

for.cond76:                                       ; preds = %for.cond76.preheader, %for.inc89
  %indvars.iv65 = phi i64 [ 0, %for.cond76.preheader ], [ %indvars.iv.next66, %for.inc89 ]
  %exitcond69.not = icmp eq i64 %indvars.iv65, %wide.trip.count
  br i1 %exitcond69.not, label %for.end91, label %for.inc89

for.inc89:                                        ; preds = %for.cond76
  %arrayidx83 = getelementptr inbounds nuw [100 x [100 x i32]], ptr @arr, i64 0, i64 %indvars.iv70, i64 %indvars.iv65
  %6 = load i32, ptr %arrayidx83, align 4, !tbaa !5, !invariant.load !12
  %arrayidx88 = getelementptr inbounds [100 x [100 x i32]], ptr @arr, i64 0, i64 %5, i64 %indvars.iv65
  store i32 %6, ptr %arrayidx88, align 4, !tbaa !5
  %indvars.iv.next66 = add nuw nsw i64 %indvars.iv65, 1
  br label %for.cond76, !llvm.loop !16

for.end91:                                        ; preds = %for.cond76
  %indvars.iv.next71 = add nuw nsw i64 %indvars.iv70, 1
  br label %for.cond71

for.cond96:                                       ; preds = %for.cond96.preheader, %for.inc117
  %indvars.iv82 = phi i64 [ 2, %for.cond96.preheader ], [ %indvars.iv.next83, %for.inc117 ]
  %exitcond88.not = icmp eq i64 %indvars.iv82, %wide.trip.count75
  br i1 %exitcond88.not, label %for.end119, label %for.cond101.preheader

for.cond101.preheader:                            ; preds = %for.cond96
  %7 = add nsw i64 %indvars.iv82, -1
  br label %for.cond101

for.cond101:                                      ; preds = %for.cond101.preheader, %for.inc114
  %indvars.iv77 = phi i64 [ 0, %for.cond101.preheader ], [ %indvars.iv.next78, %for.inc114 ]
  %exitcond81.not = icmp eq i64 %indvars.iv77, %wide.trip.count
  br i1 %exitcond81.not, label %for.inc117, label %for.inc114

for.inc114:                                       ; preds = %for.cond101
  %arrayidx108 = getelementptr inbounds nuw [100 x [100 x i32]], ptr @arr, i64 0, i64 %indvars.iv77, i64 %indvars.iv82
  %8 = load i32, ptr %arrayidx108, align 4, !tbaa !5, !invariant.load !12
  %arrayidx113 = getelementptr inbounds [100 x [100 x i32]], ptr @arr, i64 0, i64 %indvars.iv77, i64 %7
  store i32 %8, ptr %arrayidx113, align 4, !tbaa !5
  %indvars.iv.next78 = add nuw nsw i64 %indvars.iv77, 1
  br label %for.cond101, !llvm.loop !17

for.inc117:                                       ; preds = %for.cond101
  %indvars.iv.next83 = add nuw nsw i64 %indvars.iv82, 1
  br label %for.cond96, !llvm.loop !18

for.end119:                                       ; preds = %for.cond96
  %sub120 = add nsw i32 %n.tr, -1
  %add = add nsw i32 %4, %accumulator.tr
  br label %tailrecurse

return:                                           ; preds = %tailrecurse
  ret i32 %accumulator.tr
}

; Function Attrs: mustprogress uwtable
declare noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEPFRSoS_E(ptr noundef nonnull align 8 dereferenceable(8), ptr noundef) local_unnamed_addr #3 align 2

; Function Attrs: inlinehint mustprogress uwtable
declare noundef nonnull align 8 dereferenceable(8) ptr @_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_(ptr noundef nonnull align 8 dereferenceable(8)) #5

; Function Attrs: mustprogress uwtable
define dso_local void @_Z10matrix_outi(i32 noundef %n) local_unnamed_addr #3 {
entry:
  %smax = call i32 @llvm.smax.i32(i32 %n, i32 0)
  %wide.trip.count10 = zext nneg i32 %smax to i64
  %wide.trip.count = zext i32 %n to i64
  br label %for.cond

for.cond:                                         ; preds = %for.end, %entry
  %indvars.iv7 = phi i64 [ %indvars.iv.next8, %for.end ], [ 0, %entry ]
  %exitcond11.not = icmp eq i64 %indvars.iv7, %wide.trip.count10
  br i1 %exitcond11.not, label %for.end11, label %for.cond1

for.cond1:                                        ; preds = %for.cond, %for.body4
  %indvars.iv = phi i64 [ %indvars.iv.next, %for.body4 ], [ 0, %for.cond ]
  %exitcond.not = icmp eq i64 %indvars.iv, %wide.trip.count
  br i1 %exitcond.not, label %for.end, label %for.body4

for.body4:                                        ; preds = %for.cond1
  %arrayidx6 = getelementptr inbounds nuw [100 x [100 x i32]], ptr @arr, i64 0, i64 %indvars.iv7, i64 %indvars.iv
  %0 = load i32, ptr %arrayidx6, align 4, !tbaa !5, !invariant.load !12
  %call = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEi(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, i32 noundef %0)
  %call7 = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc(ptr noundef nonnull align 8 dereferenceable(8) %call, ptr noundef nonnull @.str)
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  br label %for.cond1

for.end:                                          ; preds = %for.cond1
  %call8 = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEPFRSoS_E(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, ptr noundef nonnull @_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_)
  %indvars.iv.next8 = add nuw nsw i64 %indvars.iv7, 1
  br label %for.cond

for.end11:                                        ; preds = %for.cond
  ret void
}

; Function Attrs: inlinehint mustprogress uwtable
declare noundef nonnull align 8 dereferenceable(8) ptr @_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc(ptr noundef nonnull align 8 dereferenceable(8), ptr noundef) local_unnamed_addr #5

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite)
declare void @llvm.experimental.noalias.scope.decl(metadata) #6

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smax.i32(i32, i32) #7

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smin.i32(i32, i32) #7

attributes #0 = { mustprogress norecurse uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { mustprogress nofree norecurse nosync nounwind memory(readwrite, argmem: none, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { inlinehint mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite) }
attributes #7 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #8 = { nofree nounwind }
attributes #9 = { nounwind }

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
!12 = !{}
!13 = distinct !{!13, !10, !11}
!14 = distinct !{!14, !10, !11}
!15 = distinct !{!15, !10, !11}
!16 = distinct !{!16, !10, !11}
!17 = distinct !{!17, !10, !11}
!18 = distinct !{!18, !10, !11}
