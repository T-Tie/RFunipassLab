; ModuleID = '<stdin>'
source_filename = "/tmp/tmpyuyguxzq.cpp"
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
@.str = private unnamed_addr constant [2 x i8] c",\00", align 1

; Function Attrs: mustprogress norecurse uwtable
define dso_local noundef i32 @main() local_unnamed_addr #0 {
entry:
  %a = alloca [500 x i32], align 16
  %b = alloca [500 x i32], align 16
  %n = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 2000, ptr nonnull %a) #4
  call void @llvm.lifetime.start.p0(i64 2000, ptr nonnull %b) #4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %n) #4
  %call = call noundef nonnull align 8 dereferenceable(16) ptr @_ZNSirsERi(ptr noundef nonnull align 8 dereferenceable(16) @_ZSt3cin, ptr noundef nonnull align 4 dereferenceable(4) %n)
  br label %for.cond

for.cond:                                         ; preds = %for.body, %entry
  %indvars.iv = phi i64 [ %indvars.iv.next, %for.body ], [ 0, %entry ]
  %0 = load i32, ptr %n, align 4, !tbaa !5
  %1 = sext i32 %0 to i64
  %cmp = icmp slt i64 %indvars.iv, %1
  br i1 %cmp, label %for.body, label %for.cond2.preheader

for.cond2.preheader:                              ; preds = %for.cond
  %smax = call i32 @llvm.smax.i32(i32 %0, i32 0)
  %wide.trip.count = zext nneg i32 %smax to i64
  br label %for.cond2

for.body:                                         ; preds = %for.cond
  %arrayidx = getelementptr inbounds nuw [500 x i32], ptr %a, i64 0, i64 %indvars.iv
  %call1 = call noundef nonnull align 8 dereferenceable(16) ptr @_ZNSirsERi(ptr noundef nonnull align 8 dereferenceable(16) @_ZSt3cin, ptr noundef nonnull align 4 dereferenceable(4) %arrayidx)
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  br label %for.cond, !llvm.loop !9

for.cond2:                                        ; preds = %for.cond2.preheader, %for.inc12
  %indvars.iv27 = phi i64 [ 0, %for.cond2.preheader ], [ %indvars.iv.next28, %for.inc12 ]
  %k.0 = phi i32 [ 0, %for.cond2.preheader ], [ %k.1, %for.inc12 ]
  %exitcond.not = icmp eq i64 %indvars.iv27, %wide.trip.count
  br i1 %exitcond.not, label %for.cond15.preheader, label %for.body4

for.cond15.preheader:                             ; preds = %for.cond2
  %smax43 = call i32 @llvm.smax.i32(i32 %k.0, i32 0)
  %wide.trip.count44 = zext nneg i32 %smax43 to i64
  %wide.trip.count37 = zext i32 %k.0 to i64
  br label %for.cond15

for.body4:                                        ; preds = %for.cond2
  %arrayidx6 = getelementptr inbounds nuw [500 x i32], ptr %a, i64 0, i64 %indvars.iv27
  %2 = load i32, ptr %arrayidx6, align 4, !tbaa !5
  %3 = and i32 %2, -2147483647
  %cmp7 = icmp eq i32 %3, 1
  br i1 %cmp7, label %if.then, label %for.inc12

if.then:                                          ; preds = %for.body4
  %idxprom10 = sext i32 %k.0 to i64
  %arrayidx11 = getelementptr inbounds [500 x i32], ptr %b, i64 0, i64 %idxprom10
  store i32 %2, ptr %arrayidx11, align 4, !tbaa !5
  %add = add nsw i32 %k.0, 1
  br label %for.inc12

for.inc12:                                        ; preds = %for.body4, %if.then
  %k.1 = phi i32 [ %add, %if.then ], [ %k.0, %for.body4 ]
  %indvars.iv.next28 = add nuw nsw i64 %indvars.iv27, 1
  br label %for.cond2, !llvm.loop !12

for.cond15:                                       ; preds = %for.cond15.preheader, %for.cond.cleanup
  %indvars.iv39 = phi i64 [ 0, %for.cond15.preheader ], [ %indvars.iv.next40, %for.cond.cleanup ]
  %indvars.iv31 = phi i64 [ 1, %for.cond15.preheader ], [ %indvars.iv.next32, %for.cond.cleanup ]
  %exitcond45.not = icmp eq i64 %indvars.iv39, %wide.trip.count44
  br i1 %exitcond45.not, label %for.cond43, label %for.body17

for.body17:                                       ; preds = %for.cond15
  %4 = trunc nuw nsw i64 %indvars.iv39 to i32
  br label %for.cond19

for.cond19:                                       ; preds = %for.body21, %for.body17
  %indvars.iv33 = phi i64 [ %indvars.iv.next34, %for.body21 ], [ %indvars.iv31, %for.body17 ]
  %m.0 = phi i32 [ %spec.select, %for.body21 ], [ %4, %for.body17 ]
  %exitcond38.not = icmp eq i64 %indvars.iv33, %wide.trip.count37
  br i1 %exitcond38.not, label %for.cond.cleanup, label %for.body21

for.cond.cleanup:                                 ; preds = %for.cond19
  %indvars.iv.next40 = add nuw nsw i64 %indvars.iv39, 1
  %arrayidx33 = getelementptr inbounds nuw [500 x i32], ptr %b, i64 0, i64 %indvars.iv39
  %5 = load i32, ptr %arrayidx33, align 4, !tbaa !5
  %idxprom34 = sext i32 %m.0 to i64
  %arrayidx35 = getelementptr inbounds [500 x i32], ptr %b, i64 0, i64 %idxprom34
  %6 = load i32, ptr %arrayidx35, align 4, !tbaa !5
  store i32 %6, ptr %arrayidx33, align 4, !tbaa !5
  store i32 %5, ptr %arrayidx35, align 4, !tbaa !5
  %indvars.iv.next32 = add nuw nsw i64 %indvars.iv31, 1
  br label %for.cond15, !llvm.loop !13

for.body21:                                       ; preds = %for.cond19
  %arrayidx23 = getelementptr inbounds nuw [500 x i32], ptr %b, i64 0, i64 %indvars.iv33
  %7 = load i32, ptr %arrayidx23, align 4, !tbaa !5
  %idxprom24 = sext i32 %m.0 to i64
  %arrayidx25 = getelementptr inbounds [500 x i32], ptr %b, i64 0, i64 %idxprom24
  %8 = load i32, ptr %arrayidx25, align 4, !tbaa !5
  %cmp26 = icmp slt i32 %7, %8
  %9 = trunc nuw i64 %indvars.iv33 to i32
  %spec.select = select i1 %cmp26, i32 %9, i32 %m.0
  %indvars.iv.next34 = add nuw nsw i64 %indvars.iv33, 1
  br label %for.cond19, !llvm.loop !14

for.cond43:                                       ; preds = %for.cond15, %if.end49
  %indvars.iv46 = phi i64 [ %indvars.iv.next47, %if.end49 ], [ 0, %for.cond15 ]
  %exitcond50.not = icmp eq i64 %indvars.iv46, %wide.trip.count44
  br i1 %exitcond50.not, label %for.end55, label %for.body45

for.body45:                                       ; preds = %for.cond43
  %cmp46.not = icmp eq i64 %indvars.iv46, 0
  br i1 %cmp46.not, label %if.end49, label %if.then47

if.then47:                                        ; preds = %for.body45
  %call1.i = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, ptr noundef nonnull @.str, i64 noundef 1)
  br label %if.end49

if.end49:                                         ; preds = %if.then47, %for.body45
  %arrayidx51 = getelementptr inbounds nuw [500 x i32], ptr %b, i64 0, i64 %indvars.iv46
  %10 = load i32, ptr %arrayidx51, align 4, !tbaa !5
  %call52 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEi(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, i32 noundef %10)
  %indvars.iv.next47 = add nuw nsw i64 %indvars.iv46, 1
  br label %for.cond43, !llvm.loop !15

for.end55:                                        ; preds = %for.cond43
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %n) #4
  call void @llvm.lifetime.end.p0(i64 2000, ptr nonnull %b) #4
  call void @llvm.lifetime.end.p0(i64 2000, ptr nonnull %a) #4
  ret i32 0
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr captures(none)) #1

declare noundef nonnull align 8 dereferenceable(16) ptr @_ZNSirsERi(ptr noundef nonnull align 8 dereferenceable(16), ptr noundef nonnull align 4 dereferenceable(4)) local_unnamed_addr #2

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr captures(none)) #1

declare noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEi(ptr noundef nonnull align 8 dereferenceable(8), i32 noundef) local_unnamed_addr #2

declare noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8), ptr noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smax.i32(i32, i32) #3

attributes #0 = { mustprogress norecurse uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #4 = { nounwind }

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
