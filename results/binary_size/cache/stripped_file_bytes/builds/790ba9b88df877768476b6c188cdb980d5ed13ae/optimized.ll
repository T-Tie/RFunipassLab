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
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %n) #5
  %call = call noundef nonnull align 8 dereferenceable(16) ptr @_ZNSirsERi(ptr noundef nonnull align 8 dereferenceable(16) @_ZSt3cin, ptr noundef nonnull align 4 dereferenceable(4) %n)
  call void @llvm.lifetime.start.p0(i64 4000, ptr nonnull %ans) #5
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(4000) %ans, i8 0, i64 4000, i1 false)
  %0 = load i32, ptr %n, align 4, !tbaa !5
  switch i32 %0, label %if.else5 [
    i32 0, label %if.end86.sink.split
    i32 1, label %if.then3
  ]

if.then3:                                         ; preds = %entry
  br label %if.end86.sink.split

if.else5:                                         ; preds = %entry
  store i32 2, ptr %ans, align 16, !tbaa !5
  %smax = call i32 @llvm.smax.i32(i32 %0, i32 1)
  br label %for.cond

for.cond:                                         ; preds = %cleanup, %if.else5
  %i.0 = phi i32 [ 1, %if.else5 ], [ %inc50, %cleanup ]
  %exitcond43.not = icmp eq i32 %i.0, %smax
  br i1 %exitcond43.not, label %for.cond53, label %for.cond7

for.cond7:                                        ; preds = %for.cond, %if.else37
  %indvars.iv39 = phi i32 [ %indvars.iv.next40, %if.else37 ], [ 0, %for.cond ]
  %indvars.iv = phi i64 [ %2, %if.else37 ], [ 0, %for.cond ]
  %exitcond.not = icmp eq i64 %indvars.iv, 1000
  br i1 %exitcond.not, label %cleanup, label %for.body9

for.body9:                                        ; preds = %for.cond7
  %arrayidx10 = getelementptr inbounds nuw [1000 x i32], ptr %ans, i64 0, i64 %indvars.iv
  %1 = load i32, ptr %arrayidx10, align 4, !tbaa !5
  %cmp11 = icmp eq i32 %1, 0
  %2 = add nuw nsw i64 %indvars.iv, 1
  br i1 %cmp11, label %land.lhs.true, label %if.else37

land.lhs.true:                                    ; preds = %for.body9
  %arrayidx13 = getelementptr inbounds nuw [1000 x i32], ptr %ans, i64 0, i64 %2
  %3 = load i32, ptr %arrayidx13, align 4, !tbaa !5
  %cmp14 = icmp eq i32 %3, 0
  br i1 %cmp14, label %land.lhs.true15, label %if.else37

land.lhs.true15:                                  ; preds = %land.lhs.true
  %4 = add nuw nsw i64 %indvars.iv, 2
  %arrayidx18 = getelementptr inbounds nuw [1000 x i32], ptr %ans, i64 0, i64 %4
  %5 = load i32, ptr %arrayidx18, align 4, !tbaa !5
  %cmp19 = icmp eq i32 %5, 0
  br i1 %cmp19, label %for.cond21.preheader, label %if.else37

for.cond21.preheader:                             ; preds = %land.lhs.true15
  %wide.trip.count = zext nneg i32 %indvars.iv39 to i64
  br label %for.cond21

for.cond21:                                       ; preds = %for.cond21.backedge, %for.cond21.preheader
  %indvars.iv35 = phi i64 [ 0, %for.cond21.preheader ], [ %7, %for.cond21.backedge ]
  %exitcond42.not = icmp eq i64 %indvars.iv35, %wide.trip.count
  br i1 %exitcond42.not, label %cleanup, label %for.body24

for.body24:                                       ; preds = %for.cond21
  %arrayidx26 = getelementptr inbounds nuw [1000 x i32], ptr %ans, i64 0, i64 %indvars.iv35
  %6 = load i32, ptr %arrayidx26, align 4, !tbaa !5
  %cmp27 = icmp sgt i32 %6, 9
  %7 = add nuw nsw i64 %indvars.iv35, 1
  br i1 %cmp27, label %if.then28, label %for.cond21.backedge

for.cond21.backedge:                              ; preds = %for.body24, %if.then28
  br label %for.cond21, !llvm.loop !9

if.then28:                                        ; preds = %for.body24
  %arrayidx31 = getelementptr inbounds nuw [1000 x i32], ptr %ans, i64 0, i64 %7
  %8 = load i32, ptr %arrayidx31, align 4, !tbaa !5
  %inc = add nsw i32 %8, 1
  store i32 %inc, ptr %arrayidx31, align 4, !tbaa !5
  %rem25 = urem i32 %6, 10
  store i32 %rem25, ptr %arrayidx26, align 4, !tbaa !5
  br label %for.cond21.backedge

if.else37:                                        ; preds = %for.body9, %land.lhs.true15, %land.lhs.true
  %add42 = shl nsw i32 %1, 1
  store i32 %add42, ptr %arrayidx10, align 4, !tbaa !5
  %indvars.iv.next40 = add nuw nsw i32 %indvars.iv39, 1
  br label %for.cond7, !llvm.loop !12

cleanup:                                          ; preds = %for.cond7, %for.cond21
  %inc50 = add nuw i32 %i.0, 1
  br label %for.cond, !llvm.loop !13

for.cond53:                                       ; preds = %for.cond, %for.cond53.backedge
  %indvars.iv44 = phi i64 [ %10, %for.cond53.backedge ], [ 0, %for.cond ]
  %exitcond49.not = icmp eq i64 %indvars.iv44, 1000
  br i1 %exitcond49.not, label %for.cond77.preheader, label %for.body56

for.body56:                                       ; preds = %for.cond53
  %arrayidx58 = getelementptr inbounds nuw [1000 x i32], ptr %ans, i64 0, i64 %indvars.iv44
  %9 = load i32, ptr %arrayidx58, align 4, !tbaa !5
  %cmp59 = icmp eq i32 %9, 0
  %10 = add nuw nsw i64 %indvars.iv44, 1
  br i1 %cmp59, label %land.lhs.true60, label %for.cond53.backedge

for.cond53.backedge:                              ; preds = %for.body56, %land.lhs.true60, %land.lhs.true65
  br label %for.cond53, !llvm.loop !14

land.lhs.true60:                                  ; preds = %for.body56
  %arrayidx63 = getelementptr inbounds nuw [1000 x i32], ptr %ans, i64 0, i64 %10
  %11 = load i32, ptr %arrayidx63, align 4, !tbaa !5
  %cmp64 = icmp eq i32 %11, 0
  br i1 %cmp64, label %land.lhs.true65, label %for.cond53.backedge

land.lhs.true65:                                  ; preds = %land.lhs.true60
  %12 = add nuw nsw i64 %indvars.iv44, 2
  %arrayidx68 = getelementptr inbounds nuw [1000 x i32], ptr %ans, i64 0, i64 %12
  %13 = load i32, ptr %arrayidx68, align 4, !tbaa !5
  %cmp69 = icmp eq i32 %13, 0
  br i1 %cmp69, label %if.then70, label %for.cond53.backedge

if.then70:                                        ; preds = %land.lhs.true65
  %14 = trunc nuw nsw i64 %indvars.iv44 to i32
  %sub71 = add nsw i32 %14, -1
  br label %for.cond77.preheader

for.cond77.preheader:                             ; preds = %for.cond53, %if.then70
  %i.1.ph = phi i32 [ %sub71, %if.then70 ], [ undef, %for.cond53 ]
  br label %for.cond77

for.cond77:                                       ; preds = %for.cond77.preheader, %for.body79
  %i.1 = phi i32 [ %dec, %for.body79 ], [ %i.1.ph, %for.cond77.preheader ]
  %cmp78 = icmp sgt i32 %i.1, -1
  br i1 %cmp78, label %for.body79, label %if.end86

for.body79:                                       ; preds = %for.cond77
  %idxprom80 = zext nneg i32 %i.1 to i64
  %arrayidx81 = getelementptr inbounds nuw [1000 x i32], ptr %ans, i64 0, i64 %idxprom80
  %15 = load i32, ptr %arrayidx81, align 4, !tbaa !5
  %call82 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEi(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, i32 noundef %15)
  %dec = add nsw i32 %i.1, -1
  br label %for.cond77, !llvm.loop !15

if.end86.sink.split:                              ; preds = %entry, %if.then3
  %.str.1.sink = phi ptr [ @.str.1, %if.then3 ], [ @.str, %entry ]
  %call1.i24 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, ptr noundef nonnull %.str.1.sink, i64 noundef 1)
  br label %if.end86

if.end86:                                         ; preds = %for.cond77, %if.end86.sink.split
  call void @llvm.lifetime.end.p0(i64 4000, ptr nonnull %ans) #5
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %n) #5
  ret i32 0
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr captures(none)) #1

declare noundef nonnull align 8 dereferenceable(16) ptr @_ZNSirsERi(ptr noundef nonnull align 8 dereferenceable(16), ptr noundef nonnull align 4 dereferenceable(4)) local_unnamed_addr #2

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #3

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr captures(none)) #1

declare noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEi(ptr noundef nonnull align 8 dereferenceable(8), i32 noundef) local_unnamed_addr #2

declare noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8), ptr noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smax.i32(i32, i32) #4

attributes #0 = { mustprogress norecurse uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #4 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #5 = { nounwind }

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
