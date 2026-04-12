; ModuleID = '<stdin>'
source_filename = "/tmp/tmpvz0tbgjr.cpp"
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
  %num = alloca i32, align 4
  %n = alloca i32, align 4
  %b = alloca [10000 x i32], align 16
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %num) #6
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %n) #6
  call void @llvm.lifetime.start.p0(i64 40000, ptr nonnull %b) #6
  %call = call noundef nonnull align 8 dereferenceable(16) ptr @_ZNSirsERi(ptr noundef nonnull align 8 dereferenceable(16) @_ZSt3cin, ptr noundef nonnull align 4 dereferenceable(4) %n)
  br label %for.cond

for.cond:                                         ; preds = %for.end, %entry
  %indvars.iv = phi i64 [ %indvars.iv.next, %for.end ], [ 0, %entry ]
  %0 = load i32, ptr %n, align 4, !tbaa !5
  %1 = sext i32 %0 to i64
  %cmp = icmp slt i64 %indvars.iv, %1
  br i1 %cmp, label %for.body, label %for.cond11

for.body:                                         ; preds = %for.cond
  %call1 = call noundef nonnull align 8 dereferenceable(16) ptr @_ZNSirsERi(ptr noundef nonnull align 8 dereferenceable(16) @_ZSt3cin, ptr noundef nonnull align 4 dereferenceable(4) %num)
  %2 = load i32, ptr %num, align 4, !tbaa !5
  %smax = call i32 @llvm.smax.i32(i32 %2, i32 1)
  %3 = add nuw i32 %smax, 1
  br label %for.cond2

for.cond2:                                        ; preds = %for.inc, %for.body
  %j.0 = phi i32 [ 2, %for.body ], [ %inc6, %for.inc ]
  %part.0 = phi i32 [ 0, %for.body ], [ %part.1, %for.inc ]
  %t.0 = phi i32 [ %2, %for.body ], [ %t.1, %for.inc ]
  %exitcond = icmp eq i32 %j.0, %3
  br i1 %exitcond, label %for.end, label %while.cond

while.cond:                                       ; preds = %for.cond2, %while.body
  %part.1 = phi i32 [ %inc, %while.body ], [ %part.0, %for.cond2 ]
  %t.1 = phi i32 [ %div, %while.body ], [ %t.0, %for.cond2 ]
  %rem = srem i32 %t.1, %j.0
  %div = sdiv i32 %t.1, %j.0
  %cmp5 = icmp eq i32 %rem, 0
  br i1 %cmp5, label %while.body, label %for.inc

while.body:                                       ; preds = %while.cond
  %inc = add nsw i32 %part.1, 1
  br label %while.cond, !llvm.loop !9

for.inc:                                          ; preds = %while.cond
  %inc6 = add nuw i32 %j.0, 1
  br label %for.cond2, !llvm.loop !12

for.end:                                          ; preds = %for.cond2
  %call7 = call noundef i32 @_Z7factorsiii(i32 noundef 1, i32 noundef %part.0, i32 noundef %2)
  %arrayidx = getelementptr inbounds nuw [10000 x i32], ptr %b, i64 0, i64 %indvars.iv
  store i32 %call7, ptr %arrayidx, align 4, !tbaa !5
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  br label %for.cond, !llvm.loop !13

for.cond11:                                       ; preds = %for.cond, %for.body13
  %4 = phi i32 [ %.pre, %for.body13 ], [ %0, %for.cond ]
  %indvars.iv13 = phi i64 [ %indvars.iv.next14, %for.body13 ], [ 0, %for.cond ]
  %5 = sext i32 %4 to i64
  %cmp12 = icmp slt i64 %indvars.iv13, %5
  br i1 %cmp12, label %for.body13, label %for.end20

for.body13:                                       ; preds = %for.cond11
  %arrayidx15 = getelementptr inbounds nuw [10000 x i32], ptr %b, i64 0, i64 %indvars.iv13
  %6 = load i32, ptr %arrayidx15, align 4, !tbaa !5
  %call16 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEi(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, i32 noundef %6)
  %vtable.i = load ptr, ptr %call16, align 8, !tbaa !14
  %vbase.offset.ptr.i = getelementptr i8, ptr %vtable.i, i64 -24
  %vbase.offset.i = load i64, ptr %vbase.offset.ptr.i, align 8
  %add.ptr.i = getelementptr inbounds i8, ptr %call16, i64 %vbase.offset.i
  %call.i11 = call noundef signext i8 @_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc(ptr noundef nonnull align 8 dereferenceable(264) %add.ptr.i, i8 noundef signext 10)
  %call1.i = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8) %call16, i8 noundef signext %call.i11)
  %call.i.i = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo5flushEv(ptr noundef nonnull align 8 dereferenceable(8) %call1.i)
  %indvars.iv.next14 = add nuw nsw i64 %indvars.iv13, 1
  %.pre = load i32, ptr %n, align 4, !tbaa !5
  br label %for.cond11, !llvm.loop !16

for.end20:                                        ; preds = %for.cond11
  call void @llvm.lifetime.end.p0(i64 40000, ptr nonnull %b) #6
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %n) #6
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %num) #6
  ret i32 0
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr captures(none)) #1

declare noundef nonnull align 8 dereferenceable(16) ptr @_ZNSirsERi(ptr noundef nonnull align 8 dereferenceable(16), ptr noundef nonnull align 4 dereferenceable(4)) local_unnamed_addr #2

; Function Attrs: mustprogress nofree nosync nounwind willreturn memory(none) uwtable
define dso_local noundef i32 @_Z7factorsiii(i32 noundef %factor1, i32 noundef %part, i32 noundef %num) local_unnamed_addr #3 {
entry:
  %cmp = icmp slt i32 %num, %factor1
  br i1 %cmp, label %cleanup, label %if.end

if.end:                                           ; preds = %entry
  %cmp1 = icmp eq i32 %part, 1
  br i1 %cmp1, label %cleanup, label %for.cond.preheader

for.cond.preheader:                               ; preds = %if.end
  %sub = add nsw i32 %part, -1
  br label %for.cond

for.cond:                                         ; preds = %for.cond.preheader, %for.inc
  %sum.0 = phi i32 [ %sum.1, %for.inc ], [ 0, %for.cond.preheader ]
  %i.0 = phi i32 [ %inc, %for.inc ], [ %factor1, %for.cond.preheader ]
  %cmp4.not = icmp sgt i32 %i.0, %num
  br i1 %cmp4.not, label %cleanup, label %for.body

for.body:                                         ; preds = %for.cond
  %rem = srem i32 %num, %i.0
  %div = sdiv i32 %num, %i.0
  %cmp5 = icmp eq i32 %rem, 0
  br i1 %cmp5, label %if.then6, label %for.inc

if.then6:                                         ; preds = %for.body
  %call = tail call noundef i32 @_Z7factorsiii(i32 noundef %i.0, i32 noundef %sub, i32 noundef %div)
  %add = add nsw i32 %call, %sum.0
  br label %for.inc

for.inc:                                          ; preds = %for.body, %if.then6
  %sum.1 = phi i32 [ %add, %if.then6 ], [ %sum.0, %for.body ]
  %inc = add nsw i32 %i.0, 1
  br label %for.cond, !llvm.loop !17

cleanup:                                          ; preds = %for.cond, %if.end, %entry
  %retval.0 = phi i32 [ 0, %entry ], [ 1, %if.end ], [ %sum.0, %for.cond ]
  ret i32 %retval.0
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr captures(none)) #1

declare noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEi(ptr noundef nonnull align 8 dereferenceable(8), i32 noundef) local_unnamed_addr #2

declare noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8), i8 noundef signext) local_unnamed_addr #2

; Function Attrs: mustprogress uwtable
declare noundef signext i8 @_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc(ptr noundef nonnull align 8 dereferenceable(264), i8 noundef signext) local_unnamed_addr #4 align 2

declare noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo5flushEv(ptr noundef nonnull align 8 dereferenceable(8)) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smax.i32(i32, i32) #5

attributes #0 = { mustprogress norecurse uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress nofree nosync nounwind willreturn memory(none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
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
!17 = distinct !{!17, !10, !11}
