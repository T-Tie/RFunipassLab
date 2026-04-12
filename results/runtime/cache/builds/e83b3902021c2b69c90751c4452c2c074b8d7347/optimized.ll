; ModuleID = '<stdin>'
source_filename = "/tmp/tmpnkyu5e2y.cpp"
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
  %s = alloca [60 x i32], align 16
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %n) #4
  call void @llvm.lifetime.start.p0(i64 240, ptr nonnull %s) #4
  %call = call noundef nonnull align 8 dereferenceable(16) ptr @_ZNSirsERi(ptr noundef nonnull align 8 dereferenceable(16) @_ZSt3cin, ptr noundef nonnull align 4 dereferenceable(4) %n)
  br label %for.cond

for.cond:                                         ; preds = %for.cond.cleanup6, %entry
  %indvars.iv = phi i64 [ %indvars.iv.next, %for.cond.cleanup6 ], [ 0, %entry ]
  %key.0 = phi i32 [ %spec.select, %for.cond.cleanup6 ], [ 1, %entry ]
  %0 = load i32, ptr %n, align 4, !tbaa !5
  %1 = sext i32 %0 to i64
  %cmp = icmp slt i64 %indvars.iv, %1
  br i1 %cmp, label %for.body, label %for.cond.cleanup

for.cond.cleanup:                                 ; preds = %for.cond
  %call40 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEi(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, i32 noundef %key.0)
  call void @llvm.lifetime.end.p0(i64 240, ptr nonnull %s) #4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %n) #4
  ret i32 0

for.body:                                         ; preds = %for.cond
  %arrayidx = getelementptr inbounds nuw [60 x i32], ptr %s, i64 0, i64 %indvars.iv
  %call1 = call noundef nonnull align 8 dereferenceable(16) ptr @_ZNSirsERi(ptr noundef nonnull align 8 dereferenceable(16) @_ZSt3cin, ptr noundef nonnull align 4 dereferenceable(4) %arrayidx)
  %2 = add nuw nsw i64 %indvars.iv, 30
  %arrayidx3 = getelementptr inbounds nuw [60 x i32], ptr %s, i64 0, i64 %2
  br label %for.cond4.sink.split

for.cond4.sink.split:                             ; preds = %for.body, %if.then20
  %add24.sink = phi i32 [ %add24, %if.then20 ], [ 1, %for.body ]
  %indvars.iv16.ph = phi i64 [ %indvars.iv.next17, %if.then20 ], [ %indvars.iv, %for.body ]
  store i32 %add24.sink, ptr %arrayidx3, align 4, !tbaa !5
  br label %for.cond4

for.cond4:                                        ; preds = %for.cond4.backedge, %for.cond4.sink.split
  %indvars.iv16 = phi i64 [ %indvars.iv16.ph, %for.cond4.sink.split ], [ %indvars.iv.next17, %for.cond4.backedge ]
  %indvars.iv.next17 = add nsw i64 %indvars.iv16, -1
  %cmp5 = icmp sgt i64 %indvars.iv16, 0
  br i1 %cmp5, label %for.body7, label %for.cond.cleanup6

for.cond.cleanup6:                                ; preds = %for.cond4
  %spec.select = call i32 @llvm.smax.i32(i32 %add24.sink, i32 %key.0)
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  br label %for.cond, !llvm.loop !9

for.body7:                                        ; preds = %for.cond4
  %arrayidx9 = getelementptr inbounds nuw [60 x i32], ptr %s, i64 0, i64 %indvars.iv.next17
  %3 = load i32, ptr %arrayidx9, align 4, !tbaa !5
  %4 = load i32, ptr %arrayidx, align 4, !tbaa !5
  %cmp12.not = icmp slt i32 %3, %4
  br i1 %cmp12.not, label %for.cond4.backedge, label %if.then

for.cond4.backedge:                               ; preds = %for.body7, %if.then
  br label %for.cond4, !llvm.loop !12

if.then:                                          ; preds = %for.body7
  %5 = add nuw nsw i64 %indvars.iv16, 29
  %arrayidx15 = getelementptr inbounds nuw [60 x i32], ptr %s, i64 0, i64 %5
  %6 = load i32, ptr %arrayidx15, align 4, !tbaa !5
  %cmp19.not = icmp slt i32 %6, %add24.sink
  br i1 %cmp19.not, label %for.cond4.backedge, label %if.then20

if.then20:                                        ; preds = %if.then
  %add24 = add nsw i32 %6, 1
  br label %for.cond4.sink.split, !llvm.loop !12
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr captures(none)) #1

declare noundef nonnull align 8 dereferenceable(16) ptr @_ZNSirsERi(ptr noundef nonnull align 8 dereferenceable(16), ptr noundef nonnull align 4 dereferenceable(4)) local_unnamed_addr #2

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr captures(none)) #1

declare noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEi(ptr noundef nonnull align 8 dereferenceable(8), i32 noundef) local_unnamed_addr #2

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
