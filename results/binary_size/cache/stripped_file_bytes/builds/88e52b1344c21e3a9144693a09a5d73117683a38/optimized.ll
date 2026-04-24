; ModuleID = '<stdin>'
source_filename = "/tmp/tmp_aovzizq.cpp"
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
  %an = alloca [100 x i32], align 16
  call void @llvm.lifetime.start.p0(i64 noundef 4, ptr noundef nonnull align 4 %n) #5
  %call = call noundef nonnull align 8 dereferenceable(16) ptr @_ZNSirsERi(ptr noundef nonnull align 8 dereferenceable(16) @_ZSt3cin, ptr noundef nonnull align 4 dereferenceable(4) %n)
  %0 = load i32, ptr %n, align 4, !tbaa !5
  %cmp = icmp eq i32 %0, 0
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %call1 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEi(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, i32 noundef 1)
  br label %if.end44

if.else:                                          ; preds = %entry
  call void @llvm.lifetime.start.p0(i64 noundef 400, ptr noundef nonnull %an) #6
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(400) %an, i8 noundef 0, i64 noundef 400, i1 noundef false)
  store i32 2, ptr %an, align 16, !tbaa !5
  %smax = call i32 @llvm.smax.i32(i32 %0, i32 noundef 1)
  br label %for.cond

for.cond:                                         ; preds = %for.cond.cleanup12, %if.else
  %i.0 = phi i32 [ 1, %if.else ], [ %inc29, %for.cond.cleanup12 ]
  %exitcond7.not = icmp eq i32 %i.0, %smax
  br i1 %exitcond7.not, label %while.cond, label %for.cond3

for.cond3:                                        ; preds = %for.cond, %for.body6
  %indvars.iv = phi i64 [ %indvars.iv.next, %for.body6 ], [ 0, %for.cond ]
  %exitcond.not = icmp eq i64 %indvars.iv, 90
  br i1 %exitcond.not, label %for.cond10, label %for.body6

for.body6:                                        ; preds = %for.cond3
  %arrayidx7 = getelementptr inbounds nuw [100 x i32], ptr %an, i64 0, i64 %indvars.iv
  %1 = load i32, ptr %arrayidx7, align 4, !tbaa !5, !invariant.load !9
  %mul = shl nsw i32 %1, 1
  store i32 %mul, ptr %arrayidx7, align 4, !tbaa !5
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  br label %for.cond3, !llvm.loop !10

for.cond10:                                       ; preds = %for.cond3, %if.end
  %indvars.iv3 = phi i64 [ %indvars.iv.next4, %if.end ], [ 0, %for.cond3 ]
  %exitcond6.not = icmp eq i64 %indvars.iv3, 90
  br i1 %exitcond6.not, label %for.cond.cleanup12, label %for.body13

for.cond.cleanup12:                               ; preds = %for.cond10
  %inc29 = add nuw i32 %i.0, 1
  br label %for.cond, !llvm.loop !13

for.body13:                                       ; preds = %for.cond10
  %arrayidx15 = getelementptr inbounds nuw [100 x i32], ptr %an, i64 0, i64 %indvars.iv3
  %2 = load i32, ptr %arrayidx15, align 4, !tbaa !5, !invariant.load !9
  %cmp16 = icmp sgt i32 %2, 9
  %indvars.iv.next4 = add nuw nsw i64 %indvars.iv3, 1
  br i1 %cmp16, label %if.then17, label %if.end

if.then17:                                        ; preds = %for.body13
  %sub = add nsw i32 %2, -10
  store i32 %sub, ptr %arrayidx15, align 4, !tbaa !5
  %arrayidx23 = getelementptr inbounds nuw [100 x i32], ptr %an, i64 0, i64 %indvars.iv.next4
  %3 = load i32, ptr %arrayidx23, align 4, !tbaa !5, !invariant.load !9
  %add24 = add nsw i32 %3, 1
  store i32 %add24, ptr %arrayidx23, align 4, !tbaa !5
  br label %if.end

if.end:                                           ; preds = %if.then17, %for.body13
  br label %for.cond10, !llvm.loop !14

while.cond:                                       ; preds = %for.cond, %while.cond
  %indvars.iv8 = phi i64 [ %indvars.iv.next9, %while.cond ], [ 90, %for.cond ]
  %arrayidx32 = getelementptr inbounds [100 x i32], ptr %an, i64 0, i64 %indvars.iv8
  %4 = load i32, ptr %arrayidx32, align 4, !tbaa !5
  %cmp33 = icmp eq i32 %4, 0
  %indvars.iv.next9 = add nsw i64 %indvars.iv8, -1
  br i1 %cmp33, label %while.cond, label %for.cond34.preheader, !llvm.loop !15

for.cond34.preheader:                             ; preds = %while.cond
  %5 = trunc nsw i64 %indvars.iv8 to i32
  br label %for.cond34

for.cond34:                                       ; preds = %for.cond34.preheader, %for.body37
  %jj.1 = phi i32 [ %dec42, %for.body37 ], [ %5, %for.cond34.preheader ]
  %cmp35 = icmp sgt i32 %jj.1, -1
  br i1 %cmp35, label %for.body37, label %for.end43

for.body37:                                       ; preds = %for.cond34
  %idxprom38 = zext nneg i32 %jj.1 to i64
  %arrayidx39 = getelementptr inbounds nuw [100 x i32], ptr %an, i64 0, i64 %idxprom38
  %6 = load i32, ptr %arrayidx39, align 4, !tbaa !5, !invariant.load !9
  %call40 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEi(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, i32 noundef %6)
  %dec42 = add nsw i32 %jj.1, -1
  br label %for.cond34, !llvm.loop !16

for.end43:                                        ; preds = %for.cond34
  call void @llvm.lifetime.end.p0(i64 noundef 400, ptr noundef nonnull %an) #6
  br label %if.end44

if.end44:                                         ; preds = %for.end43, %if.then
  call void @llvm.lifetime.end.p0(i64 noundef 4, ptr noundef nonnull %n) #6
  ret i32 0
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr captures(none)) #1

declare noundef nonnull align 8 dereferenceable(16) ptr @_ZNSirsERi(ptr noundef nonnull align 8 dereferenceable(16), ptr noundef nonnull align 4 dereferenceable(4)) local_unnamed_addr #2

declare noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEi(ptr noundef nonnull align 8 dereferenceable(8), i32 noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #3

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr captures(none)) #1

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smax.i32(i32, i32) #4

attributes #0 = { mustprogress norecurse uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #4 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #5 = { nofree nounwind }
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
!9 = !{}
!10 = distinct !{!10, !11, !12}
!11 = !{!"llvm.loop.mustprogress"}
!12 = !{!"llvm.loop.unroll.disable"}
!13 = distinct !{!13, !11, !12}
!14 = distinct !{!14, !11, !12}
!15 = distinct !{!15, !11, !12}
!16 = distinct !{!16, !11, !12}
