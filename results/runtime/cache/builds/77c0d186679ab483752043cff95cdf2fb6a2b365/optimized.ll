; ModuleID = '<stdin>'
source_filename = "/tmp/tmpfonl7t3n.cpp"
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
@.str = private unnamed_addr constant [2 x i8] c" \00", align 1

; Function Attrs: mustprogress norecurse uwtable
define dso_local noundef i32 @main() local_unnamed_addr #0 {
entry:
  %a = alloca [111 x [111 x i32]], align 16
  %b = alloca [111 x [111 x i32]], align 16
  %c = alloca [111 x [111 x i32]], align 16
  %x1 = alloca i32, align 4
  %x2 = alloca i32, align 4
  %y1 = alloca i32, align 4
  %y2 = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 noundef 49284, ptr noundef nonnull %a) #6
  call void @llvm.lifetime.start.p0(i64 noundef 49284, ptr noundef nonnull %b) #6
  call void @llvm.lifetime.start.p0(i64 noundef 49284, ptr noundef nonnull align 16 %c) #6
  call void @llvm.lifetime.start.p0(i64 noundef 4, ptr noundef nonnull align 4 %x1) #6
  store i32 1, ptr %x1, align 4, !tbaa !5
  call void @llvm.lifetime.start.p0(i64 noundef 4, ptr noundef nonnull align 4 %x2) #6
  store i32 1, ptr %x2, align 4, !tbaa !5
  call void @llvm.lifetime.start.p0(i64 noundef 4, ptr noundef nonnull align 4 %y1) #6
  store i32 1, ptr %y1, align 4, !tbaa !5
  call void @llvm.lifetime.start.p0(i64 noundef 4, ptr noundef nonnull align 4 %y2) #6
  store i32 1, ptr %y2, align 4, !tbaa !5
  %call = call noundef nonnull align 8 dereferenceable(16) ptr @_ZNSirsERi(ptr noundef nonnull align 8 dereferenceable(16) @_ZSt3cin, ptr noundef nonnull align 4 dereferenceable(4) %x1)
  %call1 = call noundef nonnull align 8 dereferenceable(16) ptr @_ZNSirsERi(ptr noundef nonnull align 8 dereferenceable(16) %call, ptr noundef nonnull align 4 dereferenceable(4) %y1)
  br label %for.cond

for.cond:                                         ; preds = %for.end, %entry
  %indvars.iv29 = phi i64 [ %indvars.iv.next30, %for.end ], [ 0, %entry ]
  %0 = load i32, ptr %x1, align 4, !tbaa !5
  %1 = sext i32 %0 to i64
  %cmp = icmp slt i64 %indvars.iv29, %1
  br i1 %cmp, label %for.cond2, label %for.end10

for.cond2:                                        ; preds = %for.cond, %for.body4
  %indvars.iv = phi i64 [ %indvars.iv.next, %for.body4 ], [ 0, %for.cond ]
  %2 = load i32, ptr %y1, align 4, !tbaa !5
  %3 = sext i32 %2 to i64
  %cmp3 = icmp slt i64 %indvars.iv, %3
  br i1 %cmp3, label %for.body4, label %for.end

for.body4:                                        ; preds = %for.cond2
  %arrayidx6 = getelementptr inbounds nuw [111 x [111 x i32]], ptr %a, i64 0, i64 %indvars.iv29, i64 %indvars.iv
  %call7 = call noundef nonnull align 8 dereferenceable(16) ptr @_ZNSirsERi(ptr noundef nonnull align 8 dereferenceable(16) @_ZSt3cin, ptr noundef nonnull align 4 dereferenceable(4) %arrayidx6)
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  br label %for.cond2, !llvm.loop !9

for.end:                                          ; preds = %for.cond2
  %indvars.iv.next30 = add nuw nsw i64 %indvars.iv29, 1
  br label %for.cond, !llvm.loop !12

for.end10:                                        ; preds = %for.cond
  %call11 = call noundef nonnull align 8 dereferenceable(16) ptr @_ZNSirsERi(ptr noundef nonnull align 8 dereferenceable(16) @_ZSt3cin, ptr noundef nonnull align 4 dereferenceable(4) %x2)
  %call12 = call noundef nonnull align 8 dereferenceable(16) ptr @_ZNSirsERi(ptr noundef nonnull align 8 dereferenceable(16) %call11, ptr noundef nonnull align 4 dereferenceable(4) %y2)
  br label %for.cond13

for.cond13:                                       ; preds = %for.end26, %for.end10
  %indvars.iv35 = phi i64 [ %indvars.iv.next36, %for.end26 ], [ 0, %for.end10 ]
  %4 = load i32, ptr %x2, align 4, !tbaa !5
  %5 = sext i32 %4 to i64
  %cmp14 = icmp slt i64 %indvars.iv35, %5
  br i1 %cmp14, label %for.cond16, label %for.cond30.preheader

for.cond30.preheader:                             ; preds = %for.cond13
  %6 = load i32, ptr %x1, align 4, !tbaa !5
  %7 = load i32, ptr %y2, align 4
  %smax = call i32 @llvm.smax.i32(i32 %4, i32 noundef 0)
  %smax45 = call i32 @llvm.smax.i32(i32 %7, i32 noundef 0)
  %smax51 = call i32 @llvm.smax.i32(i32 %6, i32 noundef 0)
  %wide.trip.count52 = zext nneg i32 %smax51 to i64
  %wide.trip.count46 = zext nneg i32 %smax45 to i64
  %wide.trip.count = zext nneg i32 %smax to i64
  br label %for.cond30

for.cond16:                                       ; preds = %for.cond13, %for.body18
  %indvars.iv32 = phi i64 [ %indvars.iv.next33, %for.body18 ], [ 0, %for.cond13 ]
  %8 = load i32, ptr %y2, align 4, !tbaa !5
  %9 = sext i32 %8 to i64
  %cmp17 = icmp slt i64 %indvars.iv32, %9
  br i1 %cmp17, label %for.body18, label %for.end26

for.body18:                                       ; preds = %for.cond16
  %arrayidx22 = getelementptr inbounds nuw [111 x [111 x i32]], ptr %b, i64 0, i64 %indvars.iv35, i64 %indvars.iv32
  %call23 = call noundef nonnull align 8 dereferenceable(16) ptr @_ZNSirsERi(ptr noundef nonnull align 8 dereferenceable(16) @_ZSt3cin, ptr noundef nonnull align 4 dereferenceable(4) %arrayidx22)
  %indvars.iv.next33 = add nuw nsw i64 %indvars.iv32, 1
  br label %for.cond16, !llvm.loop !13

for.end26:                                        ; preds = %for.cond16
  %indvars.iv.next36 = add nuw nsw i64 %indvars.iv35, 1
  br label %for.cond13, !llvm.loop !14

for.cond30:                                       ; preds = %for.cond30.preheader, %for.end56
  %indvars.iv48 = phi i64 [ 0, %for.cond30.preheader ], [ %indvars.iv.next49, %for.end56 ]
  %exitcond53.not = icmp eq i64 %indvars.iv48, %wide.trip.count52
  br i1 %exitcond53.not, label %for.cond60, label %for.cond33

for.cond33:                                       ; preds = %for.cond30, %for.end53
  %indvars.iv42 = phi i64 [ %indvars.iv.next43, %for.end53 ], [ 0, %for.cond30 ]
  %exitcond47.not = icmp eq i64 %indvars.iv42, %wide.trip.count46
  br i1 %exitcond47.not, label %for.end56, label %for.cond36.preheader

for.cond36.preheader:                             ; preds = %for.cond33
  %arrayidx50 = getelementptr inbounds nuw [111 x [111 x i32]], ptr %c, i64 0, i64 %indvars.iv48, i64 %indvars.iv42
  br label %for.cond36

for.cond36:                                       ; preds = %for.cond36.preheader, %for.body38
  %indvars.iv38 = phi i64 [ 0, %for.cond36.preheader ], [ %indvars.iv.next39, %for.body38 ]
  %sum.0 = phi i32 [ 0, %for.cond36.preheader ], [ %add, %for.body38 ]
  %exitcond.not = icmp eq i64 %indvars.iv38, %wide.trip.count
  br i1 %exitcond.not, label %for.end53, label %for.body38

for.body38:                                       ; preds = %for.cond36
  %arrayidx42 = getelementptr inbounds nuw [111 x [111 x i32]], ptr %a, i64 0, i64 %indvars.iv48, i64 %indvars.iv38
  %10 = load i32, ptr %arrayidx42, align 4, !tbaa !5, !invariant.load !15
  %arrayidx46 = getelementptr inbounds nuw [111 x [111 x i32]], ptr %b, i64 0, i64 %indvars.iv38, i64 %indvars.iv42
  %11 = load i32, ptr %arrayidx46, align 4, !tbaa !5, !invariant.load !15
  %mul = mul nsw i32 %11, %10
  %add = add nsw i32 %mul, %sum.0
  store i32 %add, ptr %arrayidx50, align 4, !tbaa !5
  %indvars.iv.next39 = add nuw nsw i64 %indvars.iv38, 1
  br label %for.cond36, !llvm.loop !16

for.end53:                                        ; preds = %for.cond36
  %indvars.iv.next43 = add nuw nsw i64 %indvars.iv42, 1
  br label %for.cond33, !llvm.loop !17

for.end56:                                        ; preds = %for.cond33
  %indvars.iv.next49 = add nuw nsw i64 %indvars.iv48, 1
  br label %for.cond30, !llvm.loop !18

for.cond60:                                       ; preds = %for.cond30, %for.cond.cleanup
  %12 = phi i32 [ %15, %for.cond.cleanup ], [ %7, %for.cond30 ]
  %13 = phi i32 [ %.pre, %for.cond.cleanup ], [ %6, %for.cond30 ]
  %indvars.iv57 = phi i64 [ %indvars.iv.next58, %for.cond.cleanup ], [ 0, %for.cond30 ]
  %14 = sext i32 %13 to i64
  %cmp61 = icmp slt i64 %indvars.iv57, %14
  br i1 %cmp61, label %for.cond64, label %for.end80

for.cond64:                                       ; preds = %for.cond60, %if.end
  %15 = phi i32 [ %.pre60, %if.end ], [ %12, %for.cond60 ]
  %indvars.iv54 = phi i64 [ %indvars.iv.next55, %if.end ], [ 0, %for.cond60 ]
  %16 = sext i32 %15 to i64
  %cmp65 = icmp slt i64 %indvars.iv54, %16
  br i1 %cmp65, label %for.body66, label %for.cond.cleanup

for.cond.cleanup:                                 ; preds = %for.cond64
  %indvars.iv.next58 = add nuw nsw i64 %indvars.iv57, 1
  %.pre = load i32, ptr %x1, align 4, !tbaa !5
  br label %for.cond60, !llvm.loop !19

for.body66:                                       ; preds = %for.cond64
  %arrayidx70 = getelementptr inbounds nuw [111 x [111 x i32]], ptr %c, i64 0, i64 %indvars.iv57, i64 %indvars.iv54
  %17 = load i32, ptr %arrayidx70, align 4, !tbaa !5, !invariant.load !15
  %call71 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEi(ptr noundef nonnull align 8 dereferenceable(272) @_ZSt4cout, i32 noundef %17)
  %18 = load i32, ptr %y2, align 4, !tbaa !5
  %sub = add nsw i32 %18, -1
  %19 = zext i32 %sub to i64
  %cmp72.not = icmp eq i64 %indvars.iv54, %19
  br i1 %cmp72.not, label %if.else, label %if.then

if.then:                                          ; preds = %for.body66
  %call73 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc(ptr noundef nonnull align 8 dereferenceable(272) @_ZSt4cout, ptr noundef nonnull dereferenceable(2) @.str)
  br label %if.end

if.else:                                          ; preds = %for.body66
  %call74 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEPFRSoS_E(ptr noundef nonnull align 8 dereferenceable(272) @_ZSt4cout, ptr noundef nonnull @_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_)
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %indvars.iv.next55 = add nuw nsw i64 %indvars.iv54, 1
  %.pre60 = load i32, ptr %y2, align 4, !tbaa !5
  br label %for.cond64, !llvm.loop !20

for.end80:                                        ; preds = %for.cond60
  call void @llvm.lifetime.end.p0(i64 noundef 4, ptr noundef nonnull %y2) #7
  call void @llvm.lifetime.end.p0(i64 noundef 4, ptr noundef nonnull %y1) #7
  call void @llvm.lifetime.end.p0(i64 noundef 4, ptr noundef nonnull %x2) #7
  call void @llvm.lifetime.end.p0(i64 noundef 4, ptr noundef nonnull %x1) #7
  call void @llvm.lifetime.end.p0(i64 noundef 49284, ptr noundef nonnull %c) #7
  call void @llvm.lifetime.end.p0(i64 noundef 49284, ptr noundef nonnull %b) #7
  call void @llvm.lifetime.end.p0(i64 noundef 49284, ptr noundef nonnull %a) #7
  ret i32 0
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr captures(none)) #1

declare noundef nonnull align 8 dereferenceable(16) ptr @_ZNSirsERi(ptr noundef nonnull align 8 dereferenceable(16), ptr noundef nonnull align 4 dereferenceable(4)) local_unnamed_addr #2

declare noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEi(ptr noundef nonnull align 8 dereferenceable(8), i32 noundef) local_unnamed_addr #2

; Function Attrs: inlinehint mustprogress uwtable
declare noundef nonnull align 8 dereferenceable(8) ptr @_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc(ptr noundef nonnull align 8 dereferenceable(8), ptr noundef) local_unnamed_addr #3

; Function Attrs: mustprogress uwtable
declare noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEPFRSoS_E(ptr noundef nonnull align 8 dereferenceable(8), ptr noundef) local_unnamed_addr #4 align 2

; Function Attrs: inlinehint mustprogress uwtable
declare noundef nonnull align 8 dereferenceable(8) ptr @_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_(ptr noundef nonnull align 8 dereferenceable(8)) #3

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr captures(none)) #1

; Function Attrs: mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smax.i32(i32, i32) #5

attributes #0 = { mustprogress norecurse uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { inlinehint mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #6 = { nofree nounwind willreturn }
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
!13 = distinct !{!13, !10, !11}
!14 = distinct !{!14, !10, !11}
!15 = !{}
!16 = distinct !{!16, !10, !11}
!17 = distinct !{!17, !10, !11}
!18 = distinct !{!18, !10, !11}
!19 = distinct !{!19, !10, !11}
!20 = distinct !{!20, !10, !11}
