; ModuleID = '<stdin>'
source_filename = "/tmp/tmpy0knwafl.cpp"
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
  %sum = alloca [100 x i32], align 16
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %n) #6
  call void @llvm.lifetime.start.p0(i64 400, ptr nonnull %sum) #6
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(400) %sum, i8 0, i64 400, i1 false)
  store i32 1, ptr %sum, align 16
  %call = call noundef nonnull align 8 dereferenceable(16) ptr @_ZNSirsERi(ptr noundef nonnull align 8 dereferenceable(16) @_ZSt3cin, ptr noundef nonnull align 4 dereferenceable(4) %n)
  %0 = load i32, ptr %n, align 4, !tbaa !5
  %smax = call i32 @llvm.smax.i32(i32 %0, i32 0)
  br label %for.cond

for.cond:                                         ; preds = %for.inc18, %entry
  %i.0 = phi i32 [ 0, %entry ], [ %inc, %for.inc18 ]
  %exitcond.not = icmp eq i32 %i.0, %smax
  br i1 %exitcond.not, label %for.cond20, label %for.cond1

for.cond1:                                        ; preds = %for.cond, %for.inc
  %flag.0 = phi i32 [ %flag.1, %for.inc ], [ 0, %for.cond ]
  %j.0 = phi i32 [ %dec, %for.inc ], [ 99, %for.cond ]
  %cmp2 = icmp sgt i32 %j.0, -1
  br i1 %cmp2, label %for.body3, label %for.inc18

for.body3:                                        ; preds = %for.cond1
  %idxprom = zext nneg i32 %j.0 to i64
  %arrayidx = getelementptr inbounds nuw [100 x i32], ptr %sum, i64 0, i64 %idxprom
  %1 = load i32, ptr %arrayidx, align 4, !tbaa !5
  %2 = or i32 %1, %flag.0
  %or.cond = icmp eq i32 %2, 0
  br i1 %or.cond, label %for.inc, label %if.else

if.else:                                          ; preds = %for.body3
  %mul = shl nsw i32 %1, 1
  store i32 %mul, ptr %arrayidx, align 4, !tbaa !5
  %cmp10 = icmp sgt i32 %1, 4
  br i1 %cmp10, label %if.then11, label %for.inc

if.then11:                                        ; preds = %if.else
  %sub = add nsw i32 %mul, -10
  store i32 %sub, ptr %arrayidx, align 4, !tbaa !5
  %add = add nuw nsw i32 %j.0, 1
  %idxprom14 = zext nneg i32 %add to i64
  %arrayidx15 = getelementptr inbounds nuw [100 x i32], ptr %sum, i64 0, i64 %idxprom14
  %3 = load i32, ptr %arrayidx15, align 4, !tbaa !5
  %add16 = add nsw i32 %3, 1
  store i32 %add16, ptr %arrayidx15, align 4, !tbaa !5
  br label %for.inc

for.inc:                                          ; preds = %if.else, %if.then11, %for.body3
  %flag.1 = phi i32 [ 0, %for.body3 ], [ 1, %if.then11 ], [ 1, %if.else ]
  %dec = add nsw i32 %j.0, -1
  br label %for.cond1, !llvm.loop !9

for.inc18:                                        ; preds = %for.cond1
  %inc = add nuw i32 %i.0, 1
  br label %for.cond, !llvm.loop !12

for.cond20:                                       ; preds = %for.cond, %for.inc38
  %i.1 = phi i32 [ %dec39, %for.inc38 ], [ 99, %for.cond ]
  %cmp21 = icmp sgt i32 %i.1, -1
  br i1 %cmp21, label %for.body22, label %for.end40

for.body22:                                       ; preds = %for.cond20
  %idxprom23 = zext nneg i32 %i.1 to i64
  %arrayidx24 = getelementptr inbounds nuw [100 x i32], ptr %sum, i64 0, i64 %idxprom23
  %4 = load i32, ptr %arrayidx24, align 4, !tbaa !5
  %cmp25.not = icmp eq i32 %4, 0
  br i1 %cmp25.not, label %for.inc38, label %for.cond27

for.cond27:                                       ; preds = %for.body22, %for.body29
  %j.1 = phi i32 [ %dec34, %for.body29 ], [ %i.1, %for.body22 ]
  %cmp28 = icmp sgt i32 %j.1, -1
  br i1 %cmp28, label %for.body29, label %for.end35

for.body29:                                       ; preds = %for.cond27
  %idxprom30 = zext nneg i32 %j.1 to i64
  %arrayidx31 = getelementptr inbounds nuw [100 x i32], ptr %sum, i64 0, i64 %idxprom30
  %5 = load i32, ptr %arrayidx31, align 4, !tbaa !5
  %call32 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEi(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, i32 noundef %5)
  %dec34 = add nsw i32 %j.1, -1
  br label %for.cond27, !llvm.loop !13

for.end35:                                        ; preds = %for.cond27
  %vtable.i = load ptr, ptr @_ZSt4cout, align 8, !tbaa !14
  %vbase.offset.ptr.i = getelementptr i8, ptr %vtable.i, i64 -24
  %vbase.offset.i = load i64, ptr %vbase.offset.ptr.i, align 8
  %add.ptr.i = getelementptr inbounds i8, ptr @_ZSt4cout, i64 %vbase.offset.i
  %call.i15 = call noundef signext i8 @_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc(ptr noundef nonnull align 8 dereferenceable(264) %add.ptr.i, i8 noundef signext 10)
  %call1.i = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, i8 noundef signext %call.i15)
  %call.i.i = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo5flushEv(ptr noundef nonnull align 8 dereferenceable(8) %call1.i)
  br label %for.end40

for.inc38:                                        ; preds = %for.body22
  %dec39 = add nsw i32 %i.1, -1
  br label %for.cond20, !llvm.loop !16

for.end40:                                        ; preds = %for.cond20, %for.end35
  call void @llvm.lifetime.end.p0(i64 400, ptr nonnull %sum) #6
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %n) #6
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

declare noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8), i8 noundef signext) local_unnamed_addr #3

; Function Attrs: mustprogress uwtable
declare noundef signext i8 @_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc(ptr noundef nonnull align 8 dereferenceable(264), i8 noundef signext) local_unnamed_addr #4 align 2

declare noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo5flushEv(ptr noundef nonnull align 8 dereferenceable(8)) local_unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smax.i32(i32, i32) #5

attributes #0 = { mustprogress norecurse uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #3 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
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
!9 = distinct !{!9, !10, !11}
!10 = !{!"llvm.loop.mustprogress"}
!11 = !{!"llvm.loop.unroll.disable"}
!12 = distinct !{!12, !10, !11}
!13 = distinct !{!13, !10, !11}
!14 = !{!15, !15, i64 0}
!15 = !{!"vtable pointer", !8, i64 0}
!16 = distinct !{!16, !10, !11}
