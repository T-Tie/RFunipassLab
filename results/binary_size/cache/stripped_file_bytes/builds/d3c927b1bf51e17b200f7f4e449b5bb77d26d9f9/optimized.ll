; ModuleID = '<stdin>'
source_filename = "/tmp/tmp20hb142r.cpp"
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
  %length = alloca i32, align 4
  %a = alloca [110 x i32], align 16
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %length) #6
  store i32 0, ptr %length, align 4, !tbaa !5
  call void @llvm.lifetime.start.p0(i64 440, ptr nonnull %a) #6
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(440) %a, i8 0, i64 440, i1 false)
  %call = call noundef nonnull align 8 dereferenceable(16) ptr @_ZNSirsERi(ptr noundef nonnull align 8 dereferenceable(16) @_ZSt3cin, ptr noundef nonnull align 4 dereferenceable(4) %length)
  br label %for.cond

for.cond:                                         ; preds = %for.body, %entry
  %indvars.iv = phi i64 [ %indvars.iv.next, %for.body ], [ 0, %entry ]
  %0 = load i32, ptr %length, align 4, !tbaa !5
  %1 = sext i32 %0 to i64
  %cmp = icmp slt i64 %indvars.iv, %1
  br i1 %cmp, label %for.body, label %while.cond

for.body:                                         ; preds = %for.cond
  %arrayidx = getelementptr inbounds nuw [110 x i32], ptr %a, i64 0, i64 %indvars.iv
  %call1 = call noundef nonnull align 8 dereferenceable(16) ptr @_ZNSirsERi(ptr noundef nonnull align 8 dereferenceable(16) @_ZSt3cin, ptr noundef nonnull align 4 dereferenceable(4) %arrayidx)
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  br label %for.cond, !llvm.loop !9

while.cond:                                       ; preds = %while.cond3, %for.cond
  %sec.0 = phi i32 [ 1, %for.cond ], [ %mul, %while.cond3 ]
  %cmp2 = icmp slt i32 %sec.0, %0
  br i1 %cmp2, label %while.cond3.preheader, label %while.end25

while.cond3.preheader:                            ; preds = %while.cond
  %mul = shl i32 %sec.0, 1
  %2 = sext i32 %mul to i64
  %3 = sext i32 %sec.0 to i64
  br label %while.cond3

while.cond3:                                      ; preds = %while.cond3.preheader, %if.end
  %indvars.iv43 = phi i64 [ 0, %while.cond3.preheader ], [ %indvars.iv.next44, %if.end ]
  %4 = add nuw nsw i64 %indvars.iv43, %3
  %cmp5 = icmp slt i64 %4, %1
  br i1 %cmp5, label %while.body6, label %while.cond, !llvm.loop !12

while.body6:                                      ; preds = %while.cond3
  %arrayidx8 = getelementptr inbounds [110 x i32], ptr %a, i64 0, i64 %indvars.iv43
  %5 = load i32, ptr %arrayidx8, align 8, !tbaa !5
  %arrayidx11 = getelementptr inbounds [110 x i32], ptr %a, i64 0, i64 %4
  %6 = load i32, ptr %arrayidx11, align 4, !tbaa !5
  %cmp12 = icmp slt i32 %5, %6
  br i1 %cmp12, label %if.then, label %if.end

if.then:                                          ; preds = %while.body6
  store i32 %6, ptr %arrayidx8, align 8, !tbaa !5
  store i32 %5, ptr %arrayidx11, align 4, !tbaa !5
  br label %if.end

if.end:                                           ; preds = %if.then, %while.body6
  %indvars.iv.next44 = add nsw i64 %indvars.iv43, %2
  br label %while.cond3, !llvm.loop !13

while.end25:                                      ; preds = %while.cond
  %7 = load i32, ptr %a, align 16, !tbaa !5
  %call27 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEi(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, i32 noundef %7)
  %vtable.i = load ptr, ptr %call27, align 8, !tbaa !14
  %vbase.offset.ptr.i = getelementptr i8, ptr %vtable.i, i64 -24
  %vbase.offset.i = load i64, ptr %vbase.offset.ptr.i, align 8
  %add.ptr.i = getelementptr inbounds i8, ptr %call27, i64 %vbase.offset.i
  %call.i28 = call noundef signext i8 @_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc(ptr noundef nonnull align 8 dereferenceable(264) %add.ptr.i, i8 noundef signext 10)
  %call1.i = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8) %call27, i8 noundef signext %call.i28)
  %call.i.i = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo5flushEv(ptr noundef nonnull align 8 dereferenceable(8) %call1.i)
  %div25 = lshr i32 %sec.0, 2
  %idxprom29 = zext nneg i32 %div25 to i64
  %arrayidx30 = getelementptr inbounds nuw [110 x i32], ptr %a, i64 0, i64 %idxprom29
  %8 = load i32, ptr %arrayidx30, align 4, !tbaa !5
  %mul31 = shl nuw nsw i32 %div25, 1
  %idxprom32 = zext nneg i32 %mul31 to i64
  %arrayidx33 = getelementptr inbounds nuw [110 x i32], ptr %a, i64 0, i64 %idxprom32
  %9 = load i32, ptr %arrayidx33, align 8, !tbaa !5
  %. = call i32 @llvm.smax.i32(i32 %8, i32 %9)
  %call43 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEi(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, i32 noundef %.)
  %vtable.i35 = load ptr, ptr %call43, align 8, !tbaa !14
  %vbase.offset.ptr.i36 = getelementptr i8, ptr %vtable.i35, i64 -24
  %vbase.offset.i37 = load i64, ptr %vbase.offset.ptr.i36, align 8
  %add.ptr.i38 = getelementptr inbounds i8, ptr %call43, i64 %vbase.offset.i37
  %call.i39 = call noundef signext i8 @_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc(ptr noundef nonnull align 8 dereferenceable(264) %add.ptr.i38, i8 noundef signext 10)
  %call1.i40 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8) %call43, i8 noundef signext %call.i39)
  %call.i.i41 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo5flushEv(ptr noundef nonnull align 8 dereferenceable(8) %call1.i40)
  call void @llvm.lifetime.end.p0(i64 440, ptr nonnull %a) #6
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %length) #6
  ret i32 0
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr captures(none)) #1

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #2

declare noundef nonnull align 8 dereferenceable(16) ptr @_ZNSirsERi(ptr noundef nonnull align 8 dereferenceable(16), ptr noundef nonnull align 4 dereferenceable(4)) local_unnamed_addr #3

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr captures(none)) #1

declare noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEi(ptr noundef nonnull align 8 dereferenceable(8), i32 noundef) local_unnamed_addr #3

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
