; ModuleID = '<stdin>'
source_filename = "/tmp/tmp1f4ex9jo.cpp"
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
  %N = alloca i32, align 4
  %str = alloca [1000 x i32], align 16
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %N) #5
  %call = call noundef nonnull align 8 dereferenceable(16) ptr @_ZNSirsERi(ptr noundef nonnull align 8 dereferenceable(16) @_ZSt3cin, ptr noundef nonnull align 4 dereferenceable(4) %N)
  call void @llvm.lifetime.start.p0(i64 4000, ptr nonnull %str) #5
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(4000) %str, i8 0, i64 4000, i1 false)
  store i32 1, ptr %str, align 16, !tbaa !5
  %0 = load i32, ptr %N, align 4, !tbaa !5
  %smax = call i32 @llvm.smax.i32(i32 %0, i32 0)
  br label %for.cond

for.cond:                                         ; preds = %for.inc25, %entry
  %i.0 = phi i32 [ 0, %entry ], [ %inc26, %for.inc25 ]
  %exitcond23.not = icmp eq i32 %i.0, %smax
  br i1 %exitcond23.not, label %for.cond28, label %for.cond1

for.cond1:                                        ; preds = %for.cond, %for.body3
  %indvars.iv = phi i64 [ %indvars.iv.next, %for.body3 ], [ 0, %for.cond ]
  %exitcond.not = icmp eq i64 %indvars.iv, 1000
  br i1 %exitcond.not, label %for.cond7, label %for.body3

for.body3:                                        ; preds = %for.cond1
  %arrayidx4 = getelementptr inbounds nuw [1000 x i32], ptr %str, i64 0, i64 %indvars.iv
  %1 = load i32, ptr %arrayidx4, align 4, !tbaa !5
  %mul = shl nsw i32 %1, 1
  store i32 %mul, ptr %arrayidx4, align 4, !tbaa !5
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  br label %for.cond1, !llvm.loop !9

for.cond7:                                        ; preds = %for.cond1, %for.cond7.backedge
  %indvars.iv18 = phi i64 [ %indvars.iv18.be, %for.cond7.backedge ], [ 0, %for.cond1 ]
  %exitcond22.not = icmp eq i64 %indvars.iv18, 1000
  br i1 %exitcond22.not, label %for.inc25, label %for.body9

for.body9:                                        ; preds = %for.cond7
  %arrayidx11 = getelementptr inbounds nuw [1000 x i32], ptr %str, i64 0, i64 %indvars.iv18
  %2 = load i32, ptr %arrayidx11, align 4, !tbaa !5
  %cmp12 = icmp sgt i32 %2, 9
  br i1 %cmp12, label %if.then, label %for.body9.for.inc22_crit_edge

for.body9.for.inc22_crit_edge:                    ; preds = %for.body9
  %.pre = add nuw nsw i64 %indvars.iv18, 1
  br label %for.cond7.backedge

for.cond7.backedge:                               ; preds = %for.body9.for.inc22_crit_edge, %if.then
  %indvars.iv18.be = phi i64 [ %.pre, %for.body9.for.inc22_crit_edge ], [ %3, %if.then ]
  br label %for.cond7, !llvm.loop !12

if.then:                                          ; preds = %for.body9
  %div = udiv i32 %2, 10
  %3 = add nuw nsw i64 %indvars.iv18, 1
  %arrayidx16 = getelementptr inbounds nuw [1000 x i32], ptr %str, i64 0, i64 %3
  %4 = load i32, ptr %arrayidx16, align 4, !tbaa !5
  %add17 = add nsw i32 %4, %div
  store i32 %add17, ptr %arrayidx16, align 4, !tbaa !5
  %rem16 = urem i32 %2, 10
  store i32 %rem16, ptr %arrayidx11, align 4, !tbaa !5
  br label %for.cond7.backedge

for.inc25:                                        ; preds = %for.cond7
  %inc26 = add nuw i32 %i.0, 1
  br label %for.cond, !llvm.loop !13

for.cond28:                                       ; preds = %for.cond, %for.inc41
  %i.1 = phi i32 [ %dec, %for.inc41 ], [ 999, %for.cond ]
  %flag.0 = phi i32 [ %spec.select, %for.inc41 ], [ 0, %for.cond ]
  %cmp29 = icmp sgt i32 %i.1, -1
  br i1 %cmp29, label %for.body30, label %for.end42

for.body30:                                       ; preds = %for.cond28
  %idxprom31 = zext nneg i32 %i.1 to i64
  %arrayidx32 = getelementptr inbounds nuw [1000 x i32], ptr %str, i64 0, i64 %idxprom31
  %5 = load i32, ptr %arrayidx32, align 4, !tbaa !5
  %cmp33.not = icmp eq i32 %5, 0
  %spec.select = select i1 %cmp33.not, i32 %flag.0, i32 1
  %tobool.not = icmp eq i32 %spec.select, 0
  br i1 %tobool.not, label %for.inc41, label %if.then36

if.then36:                                        ; preds = %for.body30
  %call39 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEi(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, i32 noundef %5)
  br label %for.inc41

for.inc41:                                        ; preds = %for.body30, %if.then36
  %dec = add nsw i32 %i.1, -1
  br label %for.cond28, !llvm.loop !14

for.end42:                                        ; preds = %for.cond28
  call void @llvm.lifetime.end.p0(i64 4000, ptr nonnull %str) #5
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %N) #5
  ret i32 0
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr captures(none)) #1

declare noundef nonnull align 8 dereferenceable(16) ptr @_ZNSirsERi(ptr noundef nonnull align 8 dereferenceable(16), ptr noundef nonnull align 4 dereferenceable(4)) local_unnamed_addr #2

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #3

declare noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEi(ptr noundef nonnull align 8 dereferenceable(8), i32 noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr captures(none)) #1

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
