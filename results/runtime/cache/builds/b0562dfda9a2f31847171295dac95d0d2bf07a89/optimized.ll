; ModuleID = '<stdin>'
source_filename = "/tmp/tmp4f2tm4m3.cpp"
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
  %num = alloca [40 x i32], align 16
  %temp = alloca [40 x i32], align 16
  %n = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 160, ptr nonnull %num) #4
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(160) %num, i8 0, i64 160, i1 false)
  call void @llvm.lifetime.start.p0(i64 160, ptr nonnull %temp) #4
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(160) %temp, i8 0, i64 160, i1 false)
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %n) #4
  store i32 0, ptr %n, align 4, !tbaa !5
  store i32 1, ptr %num, align 16, !tbaa !5
  store i32 1, ptr %temp, align 16, !tbaa !5
  %call = call noundef nonnull align 8 dereferenceable(16) ptr @_ZNSirsERi(ptr noundef nonnull align 8 dereferenceable(16) @_ZSt3cin, ptr noundef nonnull align 4 dereferenceable(4) %n)
  %n.promoted = load i32, ptr %n, align 4, !tbaa !5
  br label %while.cond

while.cond:                                       ; preds = %for.cond24, %entry
  %dec19 = phi i32 [ %n.promoted, %entry ], [ %dec, %for.cond24 ]
  %dec = add nsw i32 %dec19, -1
  %tobool.not = icmp eq i32 %dec19, 0
  br i1 %tobool.not, label %while.end, label %for.cond

for.cond:                                         ; preds = %while.cond, %for.inc
  %indvars.iv = phi i64 [ %indvars.iv.next.pre-phi, %for.inc ], [ 0, %while.cond ]
  %exitcond.not = icmp eq i64 %indvars.iv, 40
  br i1 %exitcond.not, label %for.cond24, label %for.body

for.body:                                         ; preds = %for.cond
  %arrayidx2 = getelementptr inbounds nuw [40 x i32], ptr %num, i64 0, i64 %indvars.iv
  %0 = load i32, ptr %arrayidx2, align 4, !tbaa !5
  %arrayidx4 = getelementptr inbounds nuw [40 x i32], ptr %temp, i64 0, i64 %indvars.iv
  %1 = load i32, ptr %arrayidx4, align 4, !tbaa !5
  %add = add nsw i32 %1, %0
  %cmp5 = icmp slt i32 %add, 10
  br i1 %cmp5, label %if.then, label %if.else

if.then:                                          ; preds = %for.body
  %.pre26 = add nuw nsw i64 %indvars.iv, 1
  br label %for.inc

if.else:                                          ; preds = %for.body
  %sub = add nsw i32 %add, -10
  %2 = add nuw nsw i64 %indvars.iv, 1
  %arrayidx22 = getelementptr inbounds nuw [40 x i32], ptr %temp, i64 0, i64 %2
  %3 = load i32, ptr %arrayidx22, align 4, !tbaa !5
  %inc = add nsw i32 %3, 1
  store i32 %inc, ptr %arrayidx22, align 4, !tbaa !5
  br label %for.inc

for.inc:                                          ; preds = %if.then, %if.else
  %indvars.iv.next.pre-phi = phi i64 [ %.pre26, %if.then ], [ %2, %if.else ]
  %sub.sink = phi i32 [ %add, %if.then ], [ %sub, %if.else ]
  store i32 %sub.sink, ptr %arrayidx4, align 4, !tbaa !5
  br label %for.cond, !llvm.loop !9

for.cond24:                                       ; preds = %for.cond, %for.body26
  %indvars.iv22 = phi i64 [ %indvars.iv.next23, %for.body26 ], [ 0, %for.cond ]
  %exitcond25.not = icmp eq i64 %indvars.iv22, 40
  br i1 %exitcond25.not, label %while.cond, label %for.body26, !llvm.loop !12

for.body26:                                       ; preds = %for.cond24
  %arrayidx28 = getelementptr inbounds nuw [40 x i32], ptr %temp, i64 0, i64 %indvars.iv22
  %4 = load i32, ptr %arrayidx28, align 4, !tbaa !5
  %arrayidx30 = getelementptr inbounds nuw [40 x i32], ptr %num, i64 0, i64 %indvars.iv22
  store i32 %4, ptr %arrayidx30, align 4, !tbaa !5
  %indvars.iv.next23 = add nuw nsw i64 %indvars.iv22, 1
  br label %for.cond24, !llvm.loop !13

while.end:                                        ; preds = %while.cond
  store i32 0, ptr %n, align 4, !tbaa !5
  br label %for.cond34

for.cond34:                                       ; preds = %for.inc47, %while.end
  %5 = phi i32 [ 0, %while.end ], [ %8, %for.inc47 ]
  %i.2 = phi i32 [ 39, %while.end ], [ %dec48, %for.inc47 ]
  %cmp35 = icmp sgt i32 %i.2, -1
  br i1 %cmp35, label %for.body36, label %for.end49

for.body36:                                       ; preds = %for.cond34
  %cmp37.not = icmp eq i32 %5, 0
  %idxprom38 = zext nneg i32 %i.2 to i64
  %arrayidx39 = getelementptr inbounds nuw [40 x i32], ptr %num, i64 0, i64 %idxprom38
  %6 = load i32, ptr %arrayidx39, align 4, !tbaa !5
  %cmp40.not = icmp eq i32 %6, 0
  %or.cond = select i1 %cmp37.not, i1 %cmp40.not, i1 false
  br i1 %or.cond, label %for.inc47, label %if.then41

if.then41:                                        ; preds = %for.body36
  %call44 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEi(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, i32 noundef %6)
  %7 = load i32, ptr %n, align 4, !tbaa !5
  %inc45 = add nsw i32 %7, 1
  store i32 %inc45, ptr %n, align 4, !tbaa !5
  br label %for.inc47

for.inc47:                                        ; preds = %for.body36, %if.then41
  %8 = phi i32 [ %inc45, %if.then41 ], [ 0, %for.body36 ]
  %dec48 = add nsw i32 %i.2, -1
  br label %for.cond34, !llvm.loop !14

for.end49:                                        ; preds = %for.cond34
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %n) #4
  call void @llvm.lifetime.end.p0(i64 160, ptr nonnull %temp) #4
  call void @llvm.lifetime.end.p0(i64 160, ptr nonnull %num) #4
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

attributes #0 = { mustprogress norecurse uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: write) }
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
!14 = distinct !{!14, !10, !11}
