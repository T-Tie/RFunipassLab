; ModuleID = '<stdin>'
source_filename = "/tmp/tmp3kkd_o0m.cpp"
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
  %a = alloca [35000 x i32], align 16
  %b = alloca [35000 x i32], align 16
  call void @llvm.lifetime.start.p0(i64 noundef 4, ptr noundef nonnull align 4 %n) #6
  call void @llvm.lifetime.start.p0(i64 noundef 140000, ptr noundef nonnull align 16 %a) #6
  call void @llvm.lifetime.start.p0(i64 noundef 140000, ptr noundef nonnull align 16 %b) #6
  %call = call noundef nonnull align 8 dereferenceable(16) ptr @_ZNSirsERi(ptr noundef nonnull align 8 dereferenceable(16) @_ZSt3cin, ptr noundef nonnull align 4 dereferenceable(4) %n)
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %indvars.iv = phi i64 [ %indvars.iv.next, %for.inc ], [ 0, %entry ]
  %0 = load i32, ptr %n, align 4, !tbaa !5
  %1 = sext i32 %0 to i64
  %cmp = icmp slt i64 %indvars.iv, %1
  br i1 %cmp, label %for.inc, label %for.cond2.preheader

for.cond2.preheader:                              ; preds = %for.cond
  %smax = call i32 @llvm.smax.i32(i32 %0, i32 noundef 0)
  %wide.trip.count = zext nneg i32 %smax to i64
  br label %for.cond2

for.inc:                                          ; preds = %for.cond
  %arrayidx = getelementptr inbounds nuw [35000 x i32], ptr %a, i64 0, i64 %indvars.iv
  %call1 = call noundef nonnull align 8 dereferenceable(16) ptr @_ZNSirsERi(ptr noundef nonnull align 8 dereferenceable(16) @_ZSt3cin, ptr noundef nonnull align 4 dereferenceable(4) %arrayidx)
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  br label %for.cond, !llvm.loop !9

for.cond2:                                        ; preds = %for.cond2.preheader, %for.inc10
  %indvars.iv12 = phi i64 [ 0, %for.cond2.preheader ], [ %indvars.iv.next13, %for.inc10 ]
  %exitcond.not = icmp eq i64 %indvars.iv12, %wide.trip.count
  br i1 %exitcond.not, label %for.cond13, label %for.inc10

for.inc10:                                        ; preds = %for.cond2
  %arrayidx6 = getelementptr inbounds nuw [35000 x i32], ptr %a, i64 0, i64 %indvars.iv12
  %2 = load i32, ptr %arrayidx6, align 4, !tbaa !5
  %call7 = call noundef i32 @_Z4factii(i32 noundef %2, i32 noundef 2)
  %arrayidx9 = getelementptr inbounds nuw [35000 x i32], ptr %b, i64 0, i64 %indvars.iv12
  store i32 %call7, ptr %arrayidx9, align 4, !tbaa !5
  %indvars.iv.next13 = add nuw nsw i64 %indvars.iv12, 1
  br label %for.cond2, !llvm.loop !12

for.cond13:                                       ; preds = %for.cond2, %for.inc20
  %3 = phi i32 [ %.pre, %for.inc20 ], [ %0, %for.cond2 ]
  %indvars.iv16 = phi i64 [ %indvars.iv.next17, %for.inc20 ], [ 0, %for.cond2 ]
  %4 = sext i32 %3 to i64
  %cmp14 = icmp slt i64 %indvars.iv16, %4
  br i1 %cmp14, label %for.inc20, label %for.end22

for.inc20:                                        ; preds = %for.cond13
  %arrayidx17 = getelementptr inbounds nuw [35000 x i32], ptr %b, i64 0, i64 %indvars.iv16
  %5 = load i32, ptr %arrayidx17, align 4, !tbaa !5
  %call18 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEi(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, i32 noundef %5)
  %vtable.i = load ptr, ptr %call18, align 8, !tbaa !13
  %vbase.offset.ptr.i = getelementptr i8, ptr %vtable.i, i64 -24
  %vbase.offset.i = load i64, ptr %vbase.offset.ptr.i, align 8, !invariant.load !15
  %add.ptr.i = getelementptr inbounds i8, ptr %call18, i64 %vbase.offset.i
  %call.i1 = call noundef signext i8 @_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc(ptr noundef nonnull align 8 dereferenceable(264) %add.ptr.i, i8 noundef signext 10)
  %call1.i = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8) %call18, i8 noundef signext %call.i1)
  %call.i.i = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo5flushEv(ptr noundef nonnull align 8 dereferenceable(8) %call1.i)
  %indvars.iv.next17 = add nuw nsw i64 %indvars.iv16, 1
  %.pre = load i32, ptr %n, align 4, !tbaa !5
  br label %for.cond13, !llvm.loop !16

for.end22:                                        ; preds = %for.cond13
  call void @llvm.lifetime.end.p0(i64 noundef 140000, ptr noundef nonnull %b) #7
  call void @llvm.lifetime.end.p0(i64 noundef 140000, ptr noundef nonnull %a) #7
  call void @llvm.lifetime.end.p0(i64 noundef 4, ptr noundef nonnull %n) #7
  ret i32 0
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr captures(none)) #1

declare noundef nonnull align 8 dereferenceable(16) ptr @_ZNSirsERi(ptr noundef nonnull align 8 dereferenceable(16), ptr noundef nonnull align 4 dereferenceable(4)) local_unnamed_addr #2

; Function Attrs: mustprogress nofree nosync nounwind willreturn memory(none) uwtable
define dso_local noundef i32 @_Z4factii(i32 noundef %n, i32 noundef %m) local_unnamed_addr #3 {
entry:
  %cmp = icmp slt i32 %n, %m
  br i1 %cmp, label %cleanup, label %if.else

if.else:                                          ; preds = %entry
  %cmp1 = icmp eq i32 %n, 2
  br i1 %cmp1, label %cleanup, label %for.cond

for.cond:                                         ; preds = %if.else, %for.inc
  %sum.0 = phi i32 [ %sum.1, %for.inc ], [ 1, %if.else ]
  %i.0 = phi i32 [ %inc, %for.inc ], [ %m, %if.else ]
  %exitcond.not = icmp eq i32 %i.0, %n
  br i1 %exitcond.not, label %cleanup, label %for.body

for.body:                                         ; preds = %for.cond
  %rem = srem i32 %n, %i.0
  %cmp5 = icmp eq i32 %rem, 0
  br i1 %cmp5, label %if.then6, label %for.inc

if.then6:                                         ; preds = %for.body
  %div = sdiv i32 %n, %i.0
  %call = tail call noundef i32 @_Z4factii(i32 noundef %div, i32 noundef %i.0)
  %add = add nsw i32 %call, %sum.0
  br label %for.inc

for.inc:                                          ; preds = %for.body, %if.then6
  %sum.1 = phi i32 [ %add, %if.then6 ], [ %sum.0, %for.body ]
  %inc = add i32 %i.0, 1
  br label %for.cond, !llvm.loop !17

cleanup:                                          ; preds = %for.cond, %if.else, %entry
  %retval.0 = phi i32 [ 0, %entry ], [ 1, %if.else ], [ %sum.0, %for.cond ]
  ret i32 %retval.0
}

declare noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEi(ptr noundef nonnull align 8 dereferenceable(8), i32 noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr captures(none)) #1

declare noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8), i8 noundef signext) local_unnamed_addr #2

; Function Attrs: mustprogress uwtable
declare noundef signext i8 @_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc(ptr noundef nonnull align 8 dereferenceable(264), i8 noundef signext) local_unnamed_addr #4 align 2

declare noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo5flushEv(ptr noundef nonnull align 8 dereferenceable(8)) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smax.i32(i32, i32) #5

attributes #0 = { mustprogress norecurse uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress nofree nosync nounwind willreturn memory(none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
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
!13 = !{!14, !14, i64 0}
!14 = !{!"vtable pointer", !8, i64 0}
!15 = !{}
!16 = distinct !{!16, !10, !11}
!17 = distinct !{!17, !10, !11}
