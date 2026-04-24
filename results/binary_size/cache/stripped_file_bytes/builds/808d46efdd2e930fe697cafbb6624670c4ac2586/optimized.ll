; ModuleID = '<stdin>'
source_filename = "/tmp/tmptvao9vex.cpp"
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
  %str = alloca [100 x i8], align 16
  call void @llvm.lifetime.start.p0(i64 noundef 100, ptr noundef nonnull align 16 %str) #4
  %call = call noundef nonnull align 8 dereferenceable(16) ptr @_ZNSi7getlineEPcl(ptr noundef nonnull align 8 dereferenceable(16) @_ZSt3cin, ptr noundef nonnull align 16 %str, i64 noundef 100)
  br label %for.cond

for.cond:                                         ; preds = %for.cond, %entry
  %indvars.iv = phi i64 [ %indvars.iv.next, %for.cond ], [ 0, %entry ]
  %j.0 = phi i32 [ %1, %for.cond ], [ 0, %entry ]
  %arrayidx = getelementptr inbounds nuw [100 x i8], ptr %str, i64 0, i64 %indvars.iv
  %0 = load i8, ptr %arrayidx, align 1, !tbaa !5
  %cmp.not = icmp eq i8 %0, 0
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  %1 = trunc nuw nsw i64 %indvars.iv to i32
  br i1 %cmp.not, label %for.cond1.preheader, label %for.cond, !llvm.loop !8

for.cond1.preheader:                              ; preds = %for.cond
  %2 = add nuw i32 %j.0, 1
  %wide.trip.count = zext i32 %2 to i64
  br label %for.cond1

for.cond1:                                        ; preds = %for.cond1.preheader, %for.body3
  %indvars.iv23 = phi i64 [ 0, %for.cond1.preheader ], [ %indvars.iv.next24, %for.body3 ]
  %l.0 = phi i32 [ 0, %for.cond1.preheader ], [ %spec.select, %for.body3 ]
  %exitcond = icmp eq i64 %indvars.iv23, %wide.trip.count
  br i1 %exitcond, label %for.end10, label %for.body3

for.body3:                                        ; preds = %for.cond1
  %arrayidx5 = getelementptr inbounds nuw [100 x i8], ptr %str, i64 0, i64 %indvars.iv23
  %3 = load i8, ptr %arrayidx5, align 1, !tbaa !5, !invariant.load !11
  %cmp7 = icmp eq i8 %3, 32
  %add = zext i1 %cmp7 to i32
  %spec.select = add nuw nsw i32 %l.0, %add
  %indvars.iv.next24 = add nuw nsw i64 %indvars.iv23, 1
  br label %for.cond1, !llvm.loop !12

for.end10:                                        ; preds = %for.cond1
  %cmp11.not = icmp eq i32 %l.0, 0
  br i1 %cmp11.not, label %for.cond74, label %for.cond13.preheader

for.cond13.preheader:                             ; preds = %for.end10
  %4 = zext i32 %j.0 to i64
  br label %for.cond13

for.cond13:                                       ; preds = %for.cond13.preheader, %for.body15
  %indvars.iv31.in = phi i64 [ %4, %for.cond13.preheader ], [ %indvars.iv31, %for.body15 ]
  %indvars.iv28 = phi i64 [ %4, %for.cond13.preheader ], [ %indvars.iv.next29, %for.body15 ]
  %cmp14 = icmp sgt i64 %indvars.iv28, 0
  br i1 %cmp14, label %for.body15, label %for.end33

for.body15:                                       ; preds = %for.cond13
  %indvars.iv31 = add nsw i64 %indvars.iv31.in, -1
  %indvars.iv.next29 = add nsw i64 %indvars.iv28, -1
  %arrayidx17 = getelementptr inbounds nuw [100 x i8], ptr %str, i64 0, i64 %indvars.iv.next29
  %5 = load i8, ptr %arrayidx17, align 1, !tbaa !5, !invariant.load !11
  %cmp19 = icmp eq i8 %5, 32
  br i1 %cmp19, label %for.cond22.preheader, label %for.cond13, !llvm.loop !13

for.cond22.preheader:                             ; preds = %for.body15
  %6 = sext i32 %j.0 to i64
  br label %for.cond22

for.cond22:                                       ; preds = %for.cond22.preheader, %for.inc28
  %indvars.iv34 = phi i64 [ %indvars.iv31, %for.cond22.preheader ], [ %indvars.iv.next35, %for.inc28 ]
  %cmp23.not.not = icmp slt i64 %indvars.iv34, %6
  br i1 %cmp23.not.not, label %for.inc28, label %for.end33.loopexit

for.inc28:                                        ; preds = %for.cond22
  %indvars.iv.next35 = add nsw i64 %indvars.iv34, 1
  %arrayidx26 = getelementptr inbounds [100 x i8], ptr %str, i64 0, i64 %indvars.iv.next35
  %7 = load i8, ptr %arrayidx26, align 1, !tbaa !5, !invariant.load !11
  %call27 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, i8 noundef signext %7)
  br label %for.cond22, !llvm.loop !14

for.end33.loopexit:                               ; preds = %for.cond22
  %8 = trunc nsw i64 %indvars.iv.next29 to i32
  %.pre55 = and i64 %indvars.iv.next29, 4294967295
  br label %for.end33

for.end33:                                        ; preds = %for.cond13, %for.end33.loopexit
  %.pre-phi = phi i64 [ %.pre55, %for.end33.loopexit ], [ %4, %for.cond13 ]
  %j.2 = phi i32 [ %8, %for.end33.loopexit ], [ %j.0, %for.cond13 ]
  %9 = add i32 %j.2, -1
  %10 = sext i32 %9 to i64
  br label %for.cond35

for.cond35:                                       ; preds = %for.inc55, %for.end33
  %indvars.iv42 = phi i64 [ %indvars.iv.next43, %for.inc55 ], [ %.pre-phi, %for.end33 ]
  %indvars.iv37 = phi i64 [ %indvars.iv.next38, %for.inc55 ], [ %10, %for.end33 ]
  %j.3 = phi i32 [ %j.4, %for.inc55 ], [ %j.2, %for.end33 ]
  %indvars.iv.next43 = add nsw i64 %indvars.iv42, -1
  %indvars = trunc i64 %indvars.iv.next43 to i32
  %11 = trunc nuw i64 %indvars.iv42 to i32
  %cmp36 = icmp sgt i32 %11, 0
  br i1 %cmp36, label %for.body37, label %for.end57

for.body37:                                       ; preds = %for.cond35
  %idxprom38 = and i64 %indvars.iv.next43, 4294967295
  %arrayidx39 = getelementptr inbounds nuw [100 x i8], ptr %str, i64 0, i64 %idxprom38
  %12 = load i8, ptr %arrayidx39, align 1, !tbaa !5, !invariant.load !11
  %cmp41 = icmp eq i8 %12, 32
  br i1 %cmp41, label %if.then42, label %for.inc55

if.then42:                                        ; preds = %for.body37
  %call43 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, ptr noundef nonnull @.str)
  %13 = sext i32 %j.3 to i64
  br label %for.cond45

for.cond45:                                       ; preds = %for.inc51, %if.then42
  %indvars.iv39 = phi i64 [ %indvars.iv.next40, %for.inc51 ], [ %indvars.iv37, %if.then42 ]
  %indvars.iv.next40 = add nsw i64 %indvars.iv39, 1
  %cmp46 = icmp slt i64 %indvars.iv.next40, %13
  br i1 %cmp46, label %for.inc51, label %for.inc55

for.inc51:                                        ; preds = %for.cond45
  %arrayidx49 = getelementptr inbounds [100 x i8], ptr %str, i64 0, i64 %indvars.iv.next40
  %14 = load i8, ptr %arrayidx49, align 1, !tbaa !5
  %call50 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, i8 noundef signext %14)
  br label %for.cond45, !llvm.loop !15

for.inc55:                                        ; preds = %for.cond45, %for.body37
  %j.4 = phi i32 [ %j.3, %for.body37 ], [ %indvars, %for.cond45 ]
  %indvars.iv.next38 = add nsw i64 %indvars.iv37, -1
  br label %for.cond35, !llvm.loop !16

for.end57:                                        ; preds = %for.cond35
  %call58 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, ptr noundef nonnull @.str)
  br label %for.cond59

for.cond59:                                       ; preds = %for.end57
  unreachable

for.inc68:                                        ; No predecessors!
  unreachable

for.cond74:                                       ; preds = %for.end10, %for.inc80
  %indvars.iv49 = phi i64 [ %indvars.iv.next50, %for.inc80 ], [ 0, %for.end10 ]
  %exitcond54 = icmp eq i64 %indvars.iv49, %wide.trip.count
  br i1 %exitcond54, label %if.end83, label %for.inc80

for.inc80:                                        ; preds = %for.cond74
  %arrayidx78 = getelementptr inbounds nuw [100 x i8], ptr %str, i64 0, i64 %indvars.iv49
  %15 = load i8, ptr %arrayidx78, align 1, !tbaa !5, !invariant.load !11
  %call79 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, i8 noundef signext %15)
  %indvars.iv.next50 = add nuw nsw i64 %indvars.iv49, 1
  br label %for.cond74, !llvm.loop !17

if.end83:                                         ; preds = %for.cond74
  call void @llvm.lifetime.end.p0(i64 noundef 100, ptr noundef nonnull %str) #5
  ret i32 0
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr captures(none)) #1

; Function Attrs: mustprogress uwtable
declare noundef nonnull align 8 dereferenceable(16) ptr @_ZNSi7getlineEPcl(ptr noundef nonnull align 8 dereferenceable(16), ptr noundef, i64 noundef) local_unnamed_addr #2 align 2

; Function Attrs: inlinehint mustprogress uwtable
declare noundef nonnull align 8 dereferenceable(8) ptr @_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c(ptr noundef nonnull align 8 dereferenceable(8), i8 signext) local_unnamed_addr #3

; Function Attrs: inlinehint mustprogress uwtable
declare noundef nonnull align 8 dereferenceable(8) ptr @_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc(ptr noundef nonnull align 8 dereferenceable(8), ptr noundef) local_unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr captures(none)) #1

attributes #0 = { mustprogress norecurse uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { inlinehint mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nofree nounwind }
attributes #5 = { nounwind }

!llvm.module.flags = !{!0, !1, !2, !3}
!llvm.ident = !{!4}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"PIE Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{!"clang version 21.1.8 (https://github.com/llvm/llvm-project.git 2078da43e25a4623cab2d0d60decddf709aaea28)"}
!5 = !{!6, !6, i64 0}
!6 = !{!"omnipotent char", !7, i64 0}
!7 = !{!"Simple C++ TBAA"}
!8 = distinct !{!8, !9, !10}
!9 = !{!"llvm.loop.mustprogress"}
!10 = !{!"llvm.loop.unroll.disable"}
!11 = !{}
!12 = distinct !{!12, !9, !10}
!13 = distinct !{!13, !9, !10}
!14 = distinct !{!14, !9, !10}
!15 = distinct !{!15, !9, !10}
!16 = distinct !{!16, !9, !10}
!17 = distinct !{!17, !9, !10}
