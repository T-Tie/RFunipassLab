; ModuleID = '<stdin>'
source_filename = "/tmp/tmpv2srr9yz.cpp"
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
  %a = alloca [500 x i32], align 16
  %N = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 noundef 2000, ptr noundef nonnull align 16 %a) #5
  call void @llvm.lifetime.start.p0(i64 noundef 4, ptr noundef nonnull align 4 %N) #5
  %call = call noundef nonnull align 8 dereferenceable(16) ptr @_ZNSirsERi(ptr noundef nonnull align 8 dereferenceable(16) @_ZSt3cin, ptr noundef nonnull align 4 dereferenceable(4) %N)
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %indvars.iv = phi i64 [ %indvars.iv.next, %for.inc ], [ 0, %entry ]
  %0 = load i32, ptr %N, align 4, !tbaa !5
  %1 = sext i32 %0 to i64
  %cmp = icmp slt i64 %indvars.iv, %1
  br i1 %cmp, label %for.inc, label %for.cond2.preheader

for.cond2.preheader:                              ; preds = %for.cond
  %smax = call i32 @llvm.smax.i32(i32 %0, i32 noundef 0)
  %wide.trip.count = zext nneg i32 %smax to i64
  br label %for.cond2

for.inc:                                          ; preds = %for.cond
  %arrayidx = getelementptr inbounds nuw [500 x i32], ptr %a, i64 0, i64 %indvars.iv
  %call1 = call noundef nonnull align 8 dereferenceable(16) ptr @_ZNSirsERi(ptr noundef nonnull align 8 dereferenceable(16) @_ZSt3cin, ptr noundef nonnull align 4 dereferenceable(4) %arrayidx)
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  br label %for.cond, !llvm.loop !9

for.cond2:                                        ; preds = %for.cond2.preheader, %for.inc13
  %indvars.iv30 = phi i64 [ 0, %for.cond2.preheader ], [ %indvars.iv.next31, %for.inc13 ]
  %i.1 = phi i32 [ 0, %for.cond2.preheader ], [ %i.2, %for.inc13 ]
  %m.0 = phi i32 [ %0, %for.cond2.preheader ], [ %m.1, %for.inc13 ]
  %exitcond.not = icmp eq i64 %indvars.iv30, %wide.trip.count
  br i1 %exitcond.not, label %for.cond16.preheader, label %for.body4

for.cond16.preheader:                             ; preds = %for.cond2
  %sub = add nsw i32 %m.0, -1
  %smax42 = call i32 @llvm.smax.i32(i32 %sub, i32 noundef 0)
  br label %for.cond16

for.body4:                                        ; preds = %for.cond2
  %arrayidx6 = getelementptr inbounds nuw [500 x i32], ptr %a, i64 0, i64 %indvars.iv30
  %2 = load i32, ptr %arrayidx6, align 4, !tbaa !5, !invariant.load !12
  %3 = and i32 %2, 1
  %cmp7.not = icmp eq i32 %3, 0
  br i1 %cmp7.not, label %if.else, label %if.then

if.then:                                          ; preds = %for.body4
  %inc10 = add nsw i32 %i.1, 1
  %idxprom11 = sext i32 %i.1 to i64
  %arrayidx12 = getelementptr inbounds [500 x i32], ptr %a, i64 0, i64 %idxprom11
  store i32 %2, ptr %arrayidx12, align 4, !tbaa !5
  br label %for.inc13

if.else:                                          ; preds = %for.body4
  %dec = add nsw i32 %m.0, -1
  br label %for.inc13

for.inc13:                                        ; preds = %if.then, %if.else
  %i.2 = phi i32 [ %inc10, %if.then ], [ %i.1, %if.else ]
  %m.1 = phi i32 [ %m.0, %if.then ], [ %dec, %if.else ]
  %indvars.iv.next31 = add nuw nsw i64 %indvars.iv30, 1
  br label %for.cond2, !llvm.loop !13

for.cond16:                                       ; preds = %for.cond16.preheader, %for.inc44
  %indvars.iv37 = phi i32 [ %sub, %for.cond16.preheader ], [ %indvars.iv.next38, %for.inc44 ]
  %i.3 = phi i32 [ 0, %for.cond16.preheader ], [ %inc45, %for.inc44 ]
  %exitcond43.not = icmp eq i32 %i.3, %smax42
  br i1 %exitcond43.not, label %for.end46, label %for.cond19.preheader

for.cond19.preheader:                             ; preds = %for.cond16
  %smax39 = call i32 @llvm.smax.i32(i32 %indvars.iv37, i32 noundef 0)
  %wide.trip.count40 = zext nneg i32 %smax39 to i64
  br label %for.cond19

for.cond19:                                       ; preds = %for.cond19.preheader, %for.inc41
  %indvars.iv34 = phi i64 [ 0, %for.cond19.preheader ], [ %indvars.iv.next35, %for.inc41 ]
  %exitcond41.not = icmp eq i64 %indvars.iv34, %wide.trip.count40
  br i1 %exitcond41.not, label %for.inc44, label %for.body23

for.body23:                                       ; preds = %for.cond19
  %arrayidx25 = getelementptr inbounds nuw [500 x i32], ptr %a, i64 0, i64 %indvars.iv34
  %4 = load i32, ptr %arrayidx25, align 4, !tbaa !5, !invariant.load !12
  %indvars.iv.next35 = add nuw nsw i64 %indvars.iv34, 1
  %arrayidx27 = getelementptr inbounds nuw [500 x i32], ptr %a, i64 0, i64 %indvars.iv.next35
  %5 = load i32, ptr %arrayidx27, align 4, !tbaa !5, !invariant.load !12
  %cmp28 = icmp sgt i32 %4, %5
  br i1 %cmp28, label %if.then29, label %for.inc41

if.then29:                                        ; preds = %for.body23
  store i32 %5, ptr %arrayidx25, align 4, !tbaa !5
  store i32 %4, ptr %arrayidx27, align 4, !tbaa !5
  br label %for.inc41

for.inc41:                                        ; preds = %for.body23, %if.then29
  br label %for.cond19, !llvm.loop !14

for.inc44:                                        ; preds = %for.cond19
  %inc45 = add nuw i32 %i.3, 1
  %indvars.iv.next38 = add i32 %indvars.iv37, -1
  br label %for.cond16, !llvm.loop !15

for.end46:                                        ; preds = %for.cond16
  %6 = load i32, ptr %a, align 16, !tbaa !5
  %call48 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEi(ptr noundef nonnull align 8 dereferenceable(272) @_ZSt4cout, i32 noundef %6)
  %smax48 = call i32 @llvm.smax.i32(i32 %m.0, i32 noundef 1)
  %wide.trip.count49 = zext nneg i32 %smax48 to i64
  br label %for.cond49

for.cond49:                                       ; preds = %for.inc56, %for.end46
  %indvars.iv44 = phi i64 [ %indvars.iv.next45, %for.inc56 ], [ 1, %for.end46 ]
  %exitcond50.not = icmp eq i64 %indvars.iv44, %wide.trip.count49
  br i1 %exitcond50.not, label %for.end58, label %for.inc56

for.inc56:                                        ; preds = %for.cond49
  %call52 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c(ptr noundef nonnull align 8 dereferenceable(272) @_ZSt4cout, i8 noundef signext 44)
  %arrayidx54 = getelementptr inbounds nuw [500 x i32], ptr %a, i64 0, i64 %indvars.iv44
  %7 = load i32, ptr %arrayidx54, align 4, !tbaa !5, !invariant.load !12
  %call55 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEi(ptr noundef nonnull align 8 dereferenceable(8) %call52, i32 noundef %7)
  %indvars.iv.next45 = add nuw nsw i64 %indvars.iv44, 1
  br label %for.cond49, !llvm.loop !16

for.end58:                                        ; preds = %for.cond49
  call void @llvm.lifetime.end.p0(i64 noundef 4, ptr noundef nonnull %N) #6
  call void @llvm.lifetime.end.p0(i64 noundef 2000, ptr noundef nonnull %a) #6
  ret i32 0
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr captures(none)) #1

declare noundef nonnull align 8 dereferenceable(16) ptr @_ZNSirsERi(ptr noundef nonnull align 8 dereferenceable(16), ptr noundef nonnull align 4 dereferenceable(4)) local_unnamed_addr #2

declare noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEi(ptr noundef nonnull align 8 dereferenceable(8), i32 noundef) local_unnamed_addr #2

; Function Attrs: inlinehint mustprogress uwtable
declare noundef nonnull align 8 dereferenceable(8) ptr @_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c(ptr noundef nonnull align 8 dereferenceable(8), i8 noundef signext) local_unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr captures(none)) #1

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smax.i32(i32, i32) #4

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
!12 = !{}
!13 = distinct !{!13, !10, !11}
!14 = distinct !{!14, !10, !11}
!15 = distinct !{!15, !10, !11}
!16 = distinct !{!16, !10, !11}
