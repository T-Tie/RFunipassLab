; ModuleID = '<stdin>'
source_filename = "/tmp/tmp53ktk9u0.cpp"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

module asm ".globl _ZSt21ios_base_library_initv"

%"class.std::basic_istream" = type { ptr, i64, %"class.std::basic_ios" }
%"class.std::basic_ios" = type { %"class.std::ios_base", ptr, i8, i8, ptr, ptr, ptr, ptr }
%"class.std::ios_base" = type { ptr, i64, i64, i32, i32, i32, ptr, %"struct.std::ios_base::_Words", [8 x %"struct.std::ios_base::_Words"], i32, ptr, %"class.std::locale" }
%"struct.std::ios_base::_Words" = type { ptr, i64 }
%"class.std::locale" = type { ptr }

@a = dso_local global [105 x [105 x i32]] zeroinitializer, align 16
@_ZSt3cin = external global %"class.std::basic_istream", align 8

; Function Attrs: mustprogress norecurse uwtable
define dso_local noundef i32 @main() local_unnamed_addr #0 {
entry:
  %n = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 noundef 4, ptr noundef nonnull align 4 %n) #7
  %call = call noundef nonnull align 8 dereferenceable(16) ptr @_ZNSirsERi(ptr noundef nonnull align 8 dereferenceable(16) @_ZSt3cin, ptr noundef nonnull align 4 dereferenceable(4) %n)
  %0 = load i32, ptr %n, align 4, !tbaa !5
  %cmp = icmp sgt i32 %0, 0
  br i1 %cmp, label %for.body, label %for.end18

for.body:                                         ; preds = %entry
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(44100) @a, i8 noundef 0, i64 noundef 44100, i1 noundef false)
  br label %for.cond1

for.cond1:                                        ; preds = %for.end, %for.body
  %1 = phi i32 [ %2, %for.end ], [ %0, %for.body ]
  %indvars.iv4 = phi i64 [ %indvars.iv.next5, %for.end ], [ 0, %for.body ]
  %cmp2 = icmp sgt i32 %1, 0
  br i1 %cmp2, label %for.cond4, label %tailrecurse.i

for.cond4:                                        ; preds = %for.cond1, %for.inc
  %2 = phi i32 [ %.pre, %for.inc ], [ %1, %for.cond1 ]
  %indvars.iv = phi i64 [ %indvars.iv.next, %for.inc ], [ 0, %for.cond1 ]
  %3 = sext i32 %2 to i64
  %cmp5 = icmp slt i64 %indvars.iv, %3
  br i1 %cmp5, label %for.inc, label %for.end

for.inc:                                          ; preds = %for.cond4
  %arrayidx8 = getelementptr inbounds nuw [105 x [105 x i32]], ptr @a, i64 0, i64 %indvars.iv4, i64 %indvars.iv
  %call9 = call noundef nonnull align 8 dereferenceable(16) ptr @_ZNSirsERi(ptr noundef nonnull align 8 dereferenceable(16) @_ZSt3cin, ptr noundef nonnull align 4 dereferenceable(4) %arrayidx8)
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  %.pre = load i32, ptr %n, align 4, !tbaa !5
  br label %for.cond4, !llvm.loop !9

for.end:                                          ; preds = %for.cond4
  %indvars.iv.next5 = add nuw nsw i64 %indvars.iv4, 1
  br label %for.cond1

tailrecurse.i:                                    ; preds = %for.cond1, %tailrecurse.i
  %n.tr.i = phi i32 [ %sub75.i, %tailrecurse.i ], [ %1, %for.cond1 ]
  call void @_Z8xiaojiani(i32 noundef %n.tr.i) #8
  %sub75.i = add nsw i32 %n.tr.i, -1
  br label %tailrecurse.i

for.end18:                                        ; preds = %entry
  call void @llvm.lifetime.end.p0(i64 noundef 4, ptr noundef nonnull %n) #9
  ret i32 0
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr captures(none)) #1

declare noundef nonnull align 8 dereferenceable(16) ptr @_ZNSirsERi(ptr noundef nonnull align 8 dereferenceable(16), ptr noundef nonnull align 4 dereferenceable(4)) local_unnamed_addr #2

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #3

; Function Attrs: mustprogress nofree norecurse noreturn nosync nounwind memory(readwrite, inaccessiblemem: write) uwtable
define dso_local noundef i32 @_Z7guilingi(i32 noundef %n) local_unnamed_addr #4 {
for.cond:
  %cmp = icmp slt i32 %n, 1
  br label %tailrecurse

tailrecurse:                                      ; preds = %tailrecurse, %for.cond
  %n.tr = phi i32 [ %n, %for.cond ], [ %sub75, %tailrecurse ]
  call void @llvm.assume(i1 noundef %cmp) #10
  tail call void @_Z8xiaojiani(i32 noundef %n.tr) #8
  %sub75 = add nsw i32 %n.tr, -1
  br label %tailrecurse
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr captures(none)) #1

; Function Attrs: mustprogress nofree norecurse nosync nounwind memory(readwrite, argmem: none, inaccessiblemem: none) uwtable
define dso_local void @_Z8xiaojiani(i32 noundef %n) local_unnamed_addr #5 {
entry:
  %cmp = icmp sgt i32 %n, 2
  br i1 %cmp, label %for.cond.preheader, label %for.end27

for.cond.preheader:                               ; preds = %entry
  %sub = add i32 %n, -1
  %wide.trip.count = zext i32 %sub to i64
  br label %for.cond

for.cond:                                         ; preds = %for.cond10, %for.cond.preheader
  br label %for.cond10

for.cond10:                                       ; preds = %for.inc, %for.cond
  %indvars.iv = phi i64 [ %indvars.iv.next, %for.inc ], [ 1, %for.cond ]
  %exitcond.not = icmp eq i64 %indvars.iv, %wide.trip.count
  br i1 %exitcond.not, label %for.cond, label %for.inc

for.inc:                                          ; preds = %for.cond10
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  %arrayidx20 = getelementptr inbounds nuw [105 x i32], ptr getelementptr inbounds nuw (i8, ptr @a, i64 840), i64 0, i64 %indvars.iv.next
  %0 = load i32, ptr %arrayidx20, align 4, !tbaa !5
  %arrayidx24 = getelementptr inbounds nuw [105 x i32], ptr getelementptr inbounds nuw (i8, ptr @a, i64 420), i64 0, i64 %indvars.iv
  store i32 %0, ptr %arrayidx24, align 4, !tbaa !5
  br label %for.cond10, !llvm.loop !12

for.end27:                                        ; preds = %entry
  ret void
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #6

attributes #0 = { mustprogress norecurse uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #4 = { mustprogress nofree norecurse noreturn nosync nounwind memory(readwrite, inaccessiblemem: write) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { mustprogress nofree norecurse nosync nounwind memory(readwrite, argmem: none, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { mustprogress nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #7 = { nofree nounwind }
attributes #8 = { nofree nosync nounwind }
attributes #9 = { nounwind }
attributes #10 = { memory(write) }

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
