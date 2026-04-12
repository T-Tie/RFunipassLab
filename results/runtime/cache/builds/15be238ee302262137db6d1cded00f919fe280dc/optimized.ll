; ModuleID = '<stdin>'
source_filename = "/tmp/tmp69koi19y.cpp"
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
  %a = alloca [100 x i32], align 16
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %n) #5
  store i32 0, ptr %n, align 4, !tbaa !5
  call void @llvm.lifetime.start.p0(i64 400, ptr nonnull %a) #5
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(400) %a, i8 0, i64 400, i1 false)
  store i32 1, ptr %a, align 16
  %call = call noundef nonnull align 8 dereferenceable(16) ptr @_ZNSirsERi(ptr noundef nonnull align 8 dereferenceable(16) @_ZSt3cin, ptr noundef nonnull align 4 dereferenceable(4) %n)
  %0 = load i32, ptr %n, align 4, !tbaa !5
  %smax = call i32 @llvm.smax.i32(i32 %0, i32 0)
  br label %for.cond

for.cond:                                         ; preds = %for.inc25, %entry
  %i.0 = phi i32 [ 0, %entry ], [ %inc26, %for.inc25 ]
  %j.0 = phi i32 [ 0, %entry ], [ %j.1, %for.inc25 ]
  %exitcond18.not = icmp eq i32 %i.0, %smax
  br i1 %exitcond18.not, label %for.cond28, label %for.cond1

for.cond1:                                        ; preds = %for.cond, %for.body3
  %indvars.iv = phi i64 [ %indvars.iv.next, %for.body3 ], [ 0, %for.cond ]
  %j.1 = phi i32 [ %j.2, %for.body3 ], [ %j.0, %for.cond ]
  %exitcond.not = icmp eq i64 %indvars.iv, 100
  br i1 %exitcond.not, label %for.inc25, label %for.body3

for.body3:                                        ; preds = %for.cond1
  %arrayidx = getelementptr inbounds nuw [100 x i32], ptr %a, i64 0, i64 %indvars.iv
  %1 = load i32, ptr %arrayidx, align 4, !tbaa !5
  %cmp5 = icmp sgt i32 %1, 4
  %mul14 = shl nsw i32 %1, 1
  %sub = add nsw i32 %mul14, -10
  %storemerge = select i1 %cmp5, i32 %sub, i32 %mul14
  %j.2 = zext i1 %cmp5 to i32
  %spec.select = or disjoint i32 %storemerge, %j.1
  store i32 %spec.select, ptr %arrayidx, align 4, !tbaa !5
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  br label %for.cond1, !llvm.loop !9

for.inc25:                                        ; preds = %for.cond1
  %inc26 = add nuw i32 %i.0, 1
  br label %for.cond, !llvm.loop !12

for.cond28:                                       ; preds = %for.cond, %for.inc36
  %i.1 = phi i32 [ %dec, %for.inc36 ], [ 99, %for.cond ]
  %cmp29 = icmp sgt i32 %i.1, -1
  br i1 %cmp29, label %for.body30, label %for.cond38.preheader

for.cond38.preheader:                             ; preds = %for.body30, %for.cond28
  %s.1.ph = phi i32 [ %i.1, %for.body30 ], [ 0, %for.cond28 ]
  br label %for.cond38

for.body30:                                       ; preds = %for.cond28
  %idxprom31 = zext nneg i32 %i.1 to i64
  %arrayidx32 = getelementptr inbounds nuw [100 x i32], ptr %a, i64 0, i64 %idxprom31
  %2 = load i32, ptr %arrayidx32, align 4, !tbaa !5
  %cmp33.not = icmp eq i32 %2, 0
  br i1 %cmp33.not, label %for.inc36, label %for.cond38.preheader

for.inc36:                                        ; preds = %for.body30
  %dec = add nsw i32 %i.1, -1
  br label %for.cond28, !llvm.loop !13

for.cond38:                                       ; preds = %for.cond38.preheader, %for.body40
  %s.1 = phi i32 [ %dec45, %for.body40 ], [ %s.1.ph, %for.cond38.preheader ]
  %cmp39 = icmp sgt i32 %s.1, -1
  br i1 %cmp39, label %for.body40, label %for.end46

for.body40:                                       ; preds = %for.cond38
  %idxprom41 = zext nneg i32 %s.1 to i64
  %arrayidx42 = getelementptr inbounds nuw [100 x i32], ptr %a, i64 0, i64 %idxprom41
  %3 = load i32, ptr %arrayidx42, align 4, !tbaa !5
  %call43 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEi(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, i32 noundef %3)
  %dec45 = add nsw i32 %s.1, -1
  br label %for.cond38, !llvm.loop !14

for.end46:                                        ; preds = %for.cond38
  call void @llvm.lifetime.end.p0(i64 400, ptr nonnull %a) #5
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %n) #5
  ret i32 0
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr captures(none)) #1

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #2

declare noundef nonnull align 8 dereferenceable(16) ptr @_ZNSirsERi(ptr noundef nonnull align 8 dereferenceable(16), ptr noundef nonnull align 4 dereferenceable(4)) local_unnamed_addr #3

declare noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEi(ptr noundef nonnull align 8 dereferenceable(8), i32 noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr captures(none)) #1

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smax.i32(i32, i32) #4

attributes #0 = { mustprogress norecurse uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #3 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
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
