; ModuleID = '<stdin>'
source_filename = "/tmp/tmpxiti772x.cpp"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

module asm ".globl _ZSt21ios_base_library_initv"

%"class.std::basic_istream" = type { ptr, i64, %"class.std::basic_ios" }
%"class.std::basic_ios" = type { %"class.std::ios_base", ptr, i8, i8, ptr, ptr, ptr, ptr }
%"class.std::ios_base" = type { ptr, i64, i64, i32, i32, i32, ptr, %"struct.std::ios_base::_Words", [8 x %"struct.std::ios_base::_Words"], i32, ptr, %"class.std::locale" }
%"struct.std::ios_base::_Words" = type { ptr, i64 }
%"class.std::locale" = type { ptr }
%"class.std::basic_ostream" = type { ptr, %"class.std::basic_ios" }

@num = dso_local local_unnamed_addr global [1000 x i32] zeroinitializer, align 16
@jinwei = dso_local local_unnamed_addr global [1000 x i32] zeroinitializer, align 16
@weishu = dso_local local_unnamed_addr global i32 1, align 4
@temp = dso_local local_unnamed_addr global i32 0, align 4
@_ZSt3cin = external global %"class.std::basic_istream", align 8
@_ZSt4cout = external global %"class.std::basic_ostream", align 8

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, argmem: none, inaccessiblemem: none) uwtable
define dso_local void @_Z8multiplyv() local_unnamed_addr #0 {
entry:
  %0 = load i32, ptr @weishu, align 4, !tbaa !5
  %smax = tail call i32 @llvm.smax.i32(i32 %0, i32 noundef -1) #5
  %1 = add i32 %smax, 1
  %wide.trip.count = zext i32 %1 to i64
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %indvars.iv = phi i64 [ %indvars.iv.next, %for.inc ], [ 0, %entry ]
  %exitcond = icmp eq i64 %indvars.iv, %wide.trip.count
  br i1 %exitcond, label %for.end, label %for.inc

for.inc:                                          ; preds = %for.cond
  %arrayidx = getelementptr inbounds nuw [1000 x i32], ptr @num, i64 0, i64 %indvars.iv
  %2 = load i32, ptr %arrayidx, align 4, !tbaa !5
  %mul = shl nsw i32 %2, 1
  store i32 %mul, ptr @temp, align 4, !tbaa !5
  %rem = srem i32 %mul, 10
  %arrayidx2 = getelementptr inbounds nuw [1000 x i32], ptr @jinwei, i64 0, i64 %indvars.iv
  %3 = load i32, ptr %arrayidx2, align 4, !tbaa !5
  %add = add nsw i32 %rem, %3
  store i32 %add, ptr %arrayidx, align 4, !tbaa !5
  %div = sdiv i32 %2, 5
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  %arrayidx7 = getelementptr inbounds nuw [1000 x i32], ptr @jinwei, i64 0, i64 %indvars.iv.next
  store i32 %div, ptr %arrayidx7, align 4, !tbaa !5
  br label %for.cond, !llvm.loop !9

for.end:                                          ; preds = %for.cond
  %arrayidx9 = getelementptr inbounds nuw [1000 x i32], ptr @jinwei, i64 0, i64 %wide.trip.count
  %4 = load i32, ptr %arrayidx9, align 4, !tbaa !5
  %arrayidx11 = getelementptr inbounds nuw [1000 x i32], ptr @num, i64 0, i64 %wide.trip.count
  store i32 %4, ptr %arrayidx11, align 4, !tbaa !5
  %idxprom12 = sext i32 %0 to i64
  %arrayidx13 = getelementptr inbounds [1000 x i32], ptr @jinwei, i64 0, i64 %idxprom12
  %5 = load i32, ptr %arrayidx13, align 4, !tbaa !5
  %cmp14 = icmp eq i32 %5, 1
  br i1 %cmp14, label %if.then, label %if.end

if.then:                                          ; preds = %for.end
  %add15 = add nsw i32 %0, 1
  store i32 %add15, ptr @weishu, align 4, !tbaa !5
  br label %if.end

if.end:                                           ; preds = %if.then, %for.end
  ret void
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr captures(none)) #1

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr captures(none)) #1

; Function Attrs: mustprogress norecurse uwtable
define dso_local noundef i32 @main() local_unnamed_addr #2 {
entry:
  %n = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 noundef 4, ptr noundef nonnull align 4 %n) #6
  store i32 1, ptr @num, align 16, !tbaa !5
  %call = call noundef nonnull align 8 dereferenceable(16) ptr @_ZNSirsERi(ptr noundef nonnull align 8 dereferenceable(16) @_ZSt3cin, ptr noundef nonnull align 4 dereferenceable(4) %n)
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %j.0 = phi i32 [ 0, %entry ], [ %inc, %for.inc ]
  %0 = load i32, ptr %n, align 4, !tbaa !5
  %cmp = icmp slt i32 %j.0, %0
  br i1 %cmp, label %for.inc, label %for.end

for.inc:                                          ; preds = %for.cond
  call void @_Z8multiplyv() #7
  %inc = add nuw nsw i32 %j.0, 1
  br label %for.cond, !llvm.loop !12

for.end:                                          ; preds = %for.cond
  %1 = load i32, ptr @weishu, align 4, !tbaa !5
  %2 = zext i32 %1 to i64
  br label %for.cond1

for.cond1:                                        ; preds = %for.inc5, %for.end
  %indvars.iv = phi i64 [ %4, %for.inc5 ], [ %2, %for.end ]
  %3 = trunc nuw i64 %indvars.iv to i32
  %cmp2 = icmp sgt i32 %3, 0
  br i1 %cmp2, label %for.inc5, label %for.end6

for.inc5:                                         ; preds = %for.cond1
  %4 = add nsw i64 %indvars.iv, -1
  %arrayidx = getelementptr inbounds nuw [1000 x i32], ptr @num, i64 0, i64 %4
  %5 = load i32, ptr %arrayidx, align 4, !tbaa !5, !invariant.load !13
  %call4 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEi(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, i32 noundef %5)
  br label %for.cond1, !llvm.loop !14

for.end6:                                         ; preds = %for.cond1
  call void @llvm.lifetime.end.p0(i64 noundef 4, ptr noundef nonnull %n) #7
  ret i32 0
}

declare noundef nonnull align 8 dereferenceable(16) ptr @_ZNSirsERi(ptr noundef nonnull align 8 dereferenceable(16), ptr noundef nonnull align 4 dereferenceable(4)) local_unnamed_addr #3

declare noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEi(ptr noundef nonnull align 8 dereferenceable(8), i32 noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smax.i32(i32, i32) #4

attributes #0 = { mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, argmem: none, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { mustprogress norecurse uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #5 = { willreturn }
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
!13 = !{}
!14 = distinct !{!14, !10, !11}
