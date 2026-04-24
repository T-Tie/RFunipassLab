; ModuleID = '<stdin>'
source_filename = "/tmp/tmpq_8h1x8y.cpp"
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
@.str = private unnamed_addr constant [2 x i8] c"1\00", align 1
@.str.1 = private unnamed_addr constant [2 x i8] c"2\00", align 1

; Function Attrs: mustprogress norecurse uwtable
define dso_local noundef i32 @main() local_unnamed_addr #0 {
entry:
  %n = alloca i32, align 4
  %ans = alloca [1000 x i32], align 16
  call void @llvm.lifetime.start.p0(i64 noundef 4, ptr noundef nonnull align 4 %n) #6
  %call = call noundef nonnull align 8 dereferenceable(16) ptr @_ZNSirsERi(ptr noundef nonnull align 8 dereferenceable(16) @_ZSt3cin, ptr noundef nonnull align 4 dereferenceable(4) %n)
  call void @llvm.lifetime.start.p0(i64 noundef 4000, ptr noundef nonnull %ans) #7
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(4000) %ans, i8 noundef 0, i64 noundef 4000, i1 noundef false)
  %0 = load i32, ptr %n, align 4, !tbaa !5
  switch i32 %0, label %if.else5 [
    i32 0, label %if.end86.sink.split
    i32 1, label %if.then3
  ]

if.then3:                                         ; preds = %entry
  br label %if.end86.sink.split

if.else5:                                         ; preds = %entry
  %smax = call i32 @llvm.smax.i32(i32 noundef %0, i32 noundef 1)
  br label %for.cond

for.cond:                                         ; preds = %for.inc49, %if.else5
  %i.0 = phi i32 [ 1, %if.else5 ], [ %inc50, %for.inc49 ]
  %exitcond34.not = icmp eq i32 %i.0, %smax
  br i1 %exitcond34.not, label %for.cond53, label %for.cond7

for.cond7:                                        ; preds = %for.cond, %for.inc46
  %indvars.iv = phi i64 [ %2, %for.inc46 ], [ 0, %for.cond ]
  %exitcond.not = icmp eq i64 %indvars.iv, 1000
  br i1 %exitcond.not, label %for.inc49, label %for.body9

for.body9:                                        ; preds = %for.cond7
  %arrayidx10 = getelementptr inbounds nuw [1000 x i32], ptr %ans, i64 0, i64 %indvars.iv
  %1 = load i32, ptr %arrayidx10, align 4, !tbaa !5, !invariant.load !9
  %cmp11 = icmp eq i32 %1, 0
  %2 = add nuw nsw i64 %indvars.iv, 1
  br i1 %cmp11, label %land.lhs.true, label %for.inc46

land.lhs.true:                                    ; preds = %for.body9
  %arrayidx13 = getelementptr inbounds nuw [1000 x i32], ptr %ans, i64 0, i64 %2
  %3 = load i32, ptr %arrayidx13, align 4, !tbaa !5, !invariant.load !9
  %cmp14 = icmp eq i32 %3, 0
  br i1 %cmp14, label %land.lhs.true15, label %for.inc46

land.lhs.true15:                                  ; preds = %land.lhs.true
  %4 = add nuw nsw i64 %indvars.iv, 2
  %arrayidx18 = getelementptr inbounds nuw [1000 x i32], ptr %ans, i64 0, i64 %4
  %5 = load i32, ptr %arrayidx18, align 4, !tbaa !5, !invariant.load !9
  %cmp19 = icmp eq i32 %5, 0
  br i1 %cmp19, label %for.cond21.preheader, label %for.inc46

for.cond21.preheader:                             ; preds = %land.lhs.true15
  %wide.trip.count = and i64 %indvars.iv, 4294967295
  br label %for.cond21

for.cond21:                                       ; preds = %for.cond21.preheader, %for.inc
  %indvars.iv27 = phi i64 [ 0, %for.cond21.preheader ], [ %indvars.iv.next28, %for.inc ]
  %exitcond33.not = icmp eq i64 %indvars.iv27, %wide.trip.count
  br i1 %exitcond33.not, label %for.inc49, label %for.body24

for.body24:                                       ; preds = %for.cond21
  %arrayidx26 = getelementptr inbounds nuw [1000 x i32], ptr %ans, i64 0, i64 %indvars.iv27
  %6 = load i32, ptr %arrayidx26, align 4, !tbaa !5, !invariant.load !9
  %cmp27 = icmp sgt i32 %6, 9
  %indvars.iv.next28 = add nuw nsw i64 %indvars.iv27, 1
  br i1 %cmp27, label %if.then28, label %for.inc

if.then28:                                        ; preds = %for.body24
  %arrayidx31 = getelementptr inbounds nuw [1000 x i32], ptr %ans, i64 0, i64 %indvars.iv.next28
  %7 = load i32, ptr %arrayidx31, align 4, !tbaa !5
  %inc = add nsw i32 %7, 1
  store i32 %inc, ptr %arrayidx31, align 4, !tbaa !5
  %rem17 = urem i32 %6, 10
  store i32 %rem17, ptr %arrayidx26, align 4, !tbaa !5
  br label %for.inc

for.inc:                                          ; preds = %for.body24, %if.then28
  br label %for.cond21, !llvm.loop !10

for.inc46:                                        ; preds = %for.body9, %land.lhs.true15, %land.lhs.true
  %add42 = shl nsw i32 %1, 1
  store i32 %add42, ptr %arrayidx10, align 4, !tbaa !5
  br label %for.cond7, !llvm.loop !13

for.inc49:                                        ; preds = %for.cond7, %for.cond21
  %inc50 = add nuw i32 %i.0, 1
  br label %for.cond, !llvm.loop !14

for.cond53:                                       ; preds = %for.cond, %for.inc73
  %indvars.iv35 = phi i64 [ %indvars.iv.next36, %for.inc73 ], [ 0, %for.cond ]
  %exitcond39.not = icmp eq i64 %indvars.iv35, 1000
  br i1 %exitcond39.not, label %for.end76, label %for.body56

for.body56:                                       ; preds = %for.cond53
  %arrayidx58 = getelementptr inbounds nuw [1000 x i32], ptr %ans, i64 0, i64 %indvars.iv35
  %8 = load i32, ptr %arrayidx58, align 4, !tbaa !5, !invariant.load !9
  %cmp59 = icmp eq i32 %8, 0
  %indvars.iv.next36 = add nuw nsw i64 %indvars.iv35, 1
  br i1 %cmp59, label %land.lhs.true60, label %for.inc73

land.lhs.true60:                                  ; preds = %for.body56
  %arrayidx63 = getelementptr inbounds nuw [1000 x i32], ptr %ans, i64 0, i64 %indvars.iv.next36
  %9 = load i32, ptr %arrayidx63, align 4, !tbaa !5, !invariant.load !9
  %cmp64 = icmp eq i32 %9, 0
  br i1 %cmp64, label %land.lhs.true65, label %for.inc73

land.lhs.true65:                                  ; preds = %land.lhs.true60
  %10 = add nuw nsw i64 %indvars.iv35, 2
  %arrayidx68 = getelementptr inbounds nuw [1000 x i32], ptr %ans, i64 0, i64 %10
  %11 = load i32, ptr %arrayidx68, align 4, !tbaa !5, !invariant.load !9
  %cmp69 = icmp eq i32 %11, 0
  br i1 %cmp69, label %if.then70, label %for.inc73

if.then70:                                        ; preds = %land.lhs.true65
  %12 = trunc nuw nsw i64 %indvars.iv35 to i32
  %sub71 = add nsw i32 %12, -1
  br label %for.end76

for.inc73:                                        ; preds = %for.body56, %land.lhs.true60, %land.lhs.true65
  br label %for.cond53, !llvm.loop !15

for.end76:                                        ; preds = %for.cond53, %if.then70
  %len.0 = phi i32 [ %sub71, %if.then70 ], [ undef, %for.cond53 ]
  br label %for.cond77

for.cond77:                                       ; preds = %for.inc83, %for.end76
  %i.1 = phi i32 [ %len.0, %for.end76 ], [ %dec, %for.inc83 ]
  %cmp78 = icmp sgt i32 %i.1, -1
  br i1 %cmp78, label %for.inc83, label %if.end86

for.inc83:                                        ; preds = %for.cond77
  %idxprom80 = zext nneg i32 %i.1 to i64
  %arrayidx81 = getelementptr inbounds nuw [1000 x i32], ptr %ans, i64 0, i64 %idxprom80
  %13 = load i32, ptr %arrayidx81, align 4, !tbaa !5, !invariant.load !9
  %call82 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEi(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, i32 noundef %13)
  %dec = add nsw i32 %i.1, -1
  br label %for.cond77, !llvm.loop !16

if.end86.sink.split:                              ; preds = %entry, %if.then3
  %.str.1.sink = phi ptr [ @.str.1, %if.then3 ], [ @.str, %entry ]
  %call4 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, ptr noundef nonnull %.str.1.sink)
  br label %if.end86

if.end86:                                         ; preds = %for.cond77, %if.end86.sink.split
  call void @llvm.lifetime.end.p0(i64 noundef 4000, ptr noundef nonnull %ans) #7
  call void @llvm.lifetime.end.p0(i64 noundef 4, ptr noundef nonnull %n) #7
  ret i32 0
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr captures(none)) #1

declare noundef nonnull align 8 dereferenceable(16) ptr @_ZNSirsERi(ptr noundef nonnull align 8 dereferenceable(16), ptr noundef nonnull align 4 dereferenceable(4)) local_unnamed_addr #2

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #3

; Function Attrs: inlinehint mustprogress uwtable
declare noundef nonnull align 8 dereferenceable(8) ptr @_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc(ptr noundef nonnull align 8 dereferenceable(8), ptr noundef) local_unnamed_addr #4

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr captures(none)) #1

declare noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEi(ptr noundef nonnull align 8 dereferenceable(8), i32 noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smax.i32(i32, i32) #5

attributes #0 = { mustprogress norecurse uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #4 = { inlinehint mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
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
!9 = !{}
!10 = distinct !{!10, !11, !12}
!11 = !{!"llvm.loop.mustprogress"}
!12 = !{!"llvm.loop.unroll.disable"}
!13 = distinct !{!13, !11, !12}
!14 = distinct !{!14, !11, !12}
!15 = distinct !{!15, !11, !12}
!16 = distinct !{!16, !11, !12}
