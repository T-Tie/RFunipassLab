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

; Function Attrs: mustprogress nofree norecurse nosync nounwind memory(readwrite, argmem: none, inaccessiblemem: none) uwtable
define dso_local void @_Z8multiplyv() local_unnamed_addr #0 {
entry:
  %0 = load i32, ptr @weishu, align 4, !tbaa !5
  %cmp.not8 = icmp slt i32 %0, 0
  br i1 %cmp.not8, label %for.end, label %for.body.preheader

for.body.preheader:                               ; preds = %entry
  %1 = add nuw i32 %0, 1
  %wide.trip.count = zext i32 %1 to i64
  %.pre = load i32, ptr @jinwei, align 16, !tbaa !5
  br label %for.body

for.body:                                         ; preds = %for.body.preheader, %for.body
  %2 = phi i32 [ %.pre, %for.body.preheader ], [ %div, %for.body ]
  %indvars.iv = phi i64 [ 0, %for.body.preheader ], [ %indvars.iv.next, %for.body ]
  %arrayidx = getelementptr inbounds nuw [1000 x i32], ptr @num, i64 0, i64 %indvars.iv
  %3 = load i32, ptr %arrayidx, align 4, !tbaa !5
  %mul = shl nsw i32 %3, 1
  %rem = srem i32 %mul, 10
  %add = add nsw i32 %rem, %2
  store i32 %add, ptr %arrayidx, align 4, !tbaa !5
  %div = sdiv i32 %3, 5
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  %arrayidx7 = getelementptr inbounds nuw [1000 x i32], ptr @jinwei, i64 0, i64 %indvars.iv.next
  store i32 %div, ptr %arrayidx7, align 4, !tbaa !5
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %for.cond.for.end_crit_edge, label %for.body, !llvm.loop !9

for.cond.for.end_crit_edge:                       ; preds = %for.body
  store i32 %mul, ptr @temp, align 4, !tbaa !5
  br label %for.end

for.end:                                          ; preds = %for.cond.for.end_crit_edge, %entry
  %i.0.lcssa = phi i64 [ %wide.trip.count, %for.cond.for.end_crit_edge ], [ 0, %entry ]
  %arrayidx9 = getelementptr inbounds nuw [1000 x i32], ptr @jinwei, i64 0, i64 %i.0.lcssa
  %4 = load i32, ptr %arrayidx9, align 4, !tbaa !5
  %arrayidx11 = getelementptr inbounds nuw [1000 x i32], ptr @num, i64 0, i64 %i.0.lcssa
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
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %n) #4
  store i32 1, ptr @num, align 16, !tbaa !5
  %call = call noundef nonnull align 8 dereferenceable(16) ptr @_ZNSirsERi(ptr noundef nonnull align 8 dereferenceable(16) @_ZSt3cin, ptr noundef nonnull align 4 dereferenceable(4) %n)
  %0 = load i32, ptr %n, align 4, !tbaa !5
  %cmp7 = icmp sgt i32 %0, 0
  %weishu.promoted = load i32, ptr @weishu, align 4
  br i1 %cmp7, label %for.body.lr.ph, label %for.end

for.body.lr.ph:                                   ; preds = %entry
  %.pre.i = load i32, ptr @jinwei, align 16
  br label %for.body

for.body:                                         ; preds = %for.body.lr.ph, %_Z8multiplyv.exit
  %j.09 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %_Z8multiplyv.exit ]
  %add15.i68 = phi i32 [ %weishu.promoted, %for.body.lr.ph ], [ %add15.i5, %_Z8multiplyv.exit ]
  %cmp.not8.i = icmp slt i32 %add15.i68, 0
  br i1 %cmp.not8.i, label %for.end.i, label %for.body.preheader.i

for.body.preheader.i:                             ; preds = %for.body
  %1 = add nuw i32 %add15.i68, 1
  %wide.trip.count.i = zext i32 %1 to i64
  br label %for.body.i

for.body.i:                                       ; preds = %for.body.i, %for.body.preheader.i
  %2 = phi i32 [ %.pre.i, %for.body.preheader.i ], [ %div.i, %for.body.i ]
  %indvars.iv.i = phi i64 [ 0, %for.body.preheader.i ], [ %indvars.iv.next.i, %for.body.i ]
  %arrayidx.i = getelementptr inbounds nuw [1000 x i32], ptr @num, i64 0, i64 %indvars.iv.i
  %3 = load i32, ptr %arrayidx.i, align 4, !tbaa !5
  %mul.i = shl nsw i32 %3, 1
  %rem.i = srem i32 %mul.i, 10
  %add.i = add nsw i32 %rem.i, %2
  store i32 %add.i, ptr %arrayidx.i, align 4, !tbaa !5
  %div.i = sdiv i32 %3, 5
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1
  %arrayidx7.i = getelementptr inbounds nuw [1000 x i32], ptr @jinwei, i64 0, i64 %indvars.iv.next.i
  store i32 %div.i, ptr %arrayidx7.i, align 4, !tbaa !5
  %exitcond.not.i = icmp eq i64 %indvars.iv.next.i, %wide.trip.count.i
  br i1 %exitcond.not.i, label %for.cond.for.end_crit_edge.i, label %for.body.i, !llvm.loop !9

for.cond.for.end_crit_edge.i:                     ; preds = %for.body.i
  store i32 %mul.i, ptr @temp, align 4, !tbaa !5
  br label %for.end.i

for.end.i:                                        ; preds = %for.cond.for.end_crit_edge.i, %for.body
  %i.0.lcssa.i = phi i64 [ %wide.trip.count.i, %for.cond.for.end_crit_edge.i ], [ 0, %for.body ]
  %arrayidx9.i = getelementptr inbounds nuw [1000 x i32], ptr @jinwei, i64 0, i64 %i.0.lcssa.i
  %4 = load i32, ptr %arrayidx9.i, align 4, !tbaa !5
  %arrayidx11.i = getelementptr inbounds nuw [1000 x i32], ptr @num, i64 0, i64 %i.0.lcssa.i
  store i32 %4, ptr %arrayidx11.i, align 4, !tbaa !5
  %idxprom12.i = sext i32 %add15.i68 to i64
  %arrayidx13.i = getelementptr inbounds [1000 x i32], ptr @jinwei, i64 0, i64 %idxprom12.i
  %5 = load i32, ptr %arrayidx13.i, align 4, !tbaa !5
  %cmp14.i = icmp eq i32 %5, 1
  br i1 %cmp14.i, label %if.then.i, label %_Z8multiplyv.exit

if.then.i:                                        ; preds = %for.end.i
  %add15.i = add nsw i32 %add15.i68, 1
  store i32 %add15.i, ptr @weishu, align 4, !tbaa !5
  br label %_Z8multiplyv.exit

_Z8multiplyv.exit:                                ; preds = %for.end.i, %if.then.i
  %add15.i5 = phi i32 [ %add15.i68, %for.end.i ], [ %add15.i, %if.then.i ]
  %inc = add nuw nsw i32 %j.09, 1
  %exitcond.not = icmp eq i32 %inc, %0
  br i1 %exitcond.not, label %for.end, label %for.body, !llvm.loop !12

for.end:                                          ; preds = %_Z8multiplyv.exit, %entry
  %6 = phi i32 [ %weishu.promoted, %entry ], [ %add15.i5, %_Z8multiplyv.exit ]
  %cmp210 = icmp sgt i32 %6, 0
  br i1 %cmp210, label %for.body3.preheader, label %for.end6

for.body3.preheader:                              ; preds = %for.end
  %7 = zext nneg i32 %6 to i64
  br label %for.body3

for.body3:                                        ; preds = %for.body3.preheader, %for.body3
  %indvars.iv = phi i64 [ %7, %for.body3.preheader ], [ %indvars.iv.next, %for.body3 ]
  %indvars.iv.next = add nsw i64 %indvars.iv, -1
  %arrayidx = getelementptr inbounds nuw [1000 x i32], ptr @num, i64 0, i64 %indvars.iv.next
  %8 = load i32, ptr %arrayidx, align 4, !tbaa !5
  %call4 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEi(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, i32 noundef %8)
  %cmp2 = icmp samesign ugt i64 %indvars.iv, 1
  br i1 %cmp2, label %for.body3, label %for.end6, !llvm.loop !13

for.end6:                                         ; preds = %for.body3, %for.end
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %n) #4
  ret i32 0
}

declare noundef nonnull align 8 dereferenceable(16) ptr @_ZNSirsERi(ptr noundef nonnull align 8 dereferenceable(16), ptr noundef nonnull align 4 dereferenceable(4)) local_unnamed_addr #3

declare noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEi(ptr noundef nonnull align 8 dereferenceable(8), i32 noundef) local_unnamed_addr #3

attributes #0 = { mustprogress nofree norecurse nosync nounwind memory(readwrite, argmem: none, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { mustprogress norecurse uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
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
