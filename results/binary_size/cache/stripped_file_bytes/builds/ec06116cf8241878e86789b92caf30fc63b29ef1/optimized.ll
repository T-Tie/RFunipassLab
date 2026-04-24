; ModuleID = '<stdin>'
source_filename = "/tmp/tmp_9s95ecz.cpp"
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

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define dso_local noundef i32 @_Z3cmpPKvS0_(ptr noundef readonly captures(none) %a, ptr noundef readonly captures(none) %b) #0 {
entry:
  %0 = load i32, ptr %a, align 4, !tbaa !5
  %1 = load i32, ptr %b, align 4, !tbaa !5
  %sub = sub nsw i32 %0, %1
  ret i32 %sub
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define dso_local noundef i32 @_Z5chuliPii(ptr noundef readonly captures(none) %p, i32 noundef %i) local_unnamed_addr #0 {
entry:
  %invariant.gep = getelementptr i8, ptr %p, i64 -4
  %0 = sext i32 %i to i64
  %gep = getelementptr i32, ptr %invariant.gep, i64 %0
  %smax = tail call i32 @llvm.smax.i32(i32 %i, i32 0)
  %wide.trip.count22 = zext nneg i32 %smax to i64
  %wide.trip.count = zext i32 %i to i64
  br label %for.cond

for.cond:                                         ; preds = %cleanup, %entry
  %indvars.iv = phi i64 [ %indvars.iv.next, %cleanup ], [ 0, %entry ]
  %count.0 = phi i32 [ %count.1, %cleanup ], [ 0, %entry ]
  %exitcond23.not = icmp eq i64 %indvars.iv, %wide.trip.count22
  br i1 %exitcond23.not, label %cleanup27, label %for.body

for.body:                                         ; preds = %for.cond
  %arrayidx = getelementptr inbounds nuw i32, ptr %p, i64 %indvars.iv
  %1 = load i32, ptr %arrayidx, align 4, !tbaa !5
  %mul = shl nsw i32 %1, 1
  %2 = load i32, ptr %gep, align 4, !tbaa !5
  %cmp3 = icmp sgt i32 %mul, %2
  br i1 %cmp3, label %cleanup27, label %for.cond4

for.cond4:                                        ; preds = %for.body, %if.end15
  %indvars.iv18 = phi i64 [ %indvars.iv.next19, %if.end15 ], [ %indvars.iv, %for.body ]
  %exitcond.not = icmp eq i64 %indvars.iv18, %wide.trip.count
  br i1 %exitcond.not, label %cleanup, label %for.body7

for.body7:                                        ; preds = %for.cond4
  %arrayidx9 = getelementptr inbounds nuw i32, ptr %p, i64 %indvars.iv18
  %3 = load i32, ptr %arrayidx9, align 4, !tbaa !5
  %cmp13 = icmp eq i32 %3, %mul
  br i1 %cmp13, label %if.then14, label %if.end15

if.then14:                                        ; preds = %for.body7
  %inc = add nsw i32 %count.0, 1
  br label %cleanup

if.end15:                                         ; preds = %for.body7
  %cmp21 = icmp sgt i32 %3, %mul
  %indvars.iv.next19 = add nuw nsw i64 %indvars.iv18, 1
  br i1 %cmp21, label %cleanup, label %for.cond4, !llvm.loop !9

cleanup:                                          ; preds = %if.end15, %for.cond4, %if.then14
  %count.1 = phi i32 [ %inc, %if.then14 ], [ %count.0, %for.cond4 ], [ %count.0, %if.end15 ]
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  br label %for.cond, !llvm.loop !12

cleanup27:                                        ; preds = %for.body, %for.cond
  ret i32 %count.0
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr captures(none)) #1

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr captures(none)) #1

; Function Attrs: mustprogress norecurse uwtable
define dso_local noundef i32 @main() local_unnamed_addr #2 {
entry:
  %a = alloca [20 x i32], align 16
  call void @llvm.lifetime.start.p0(i64 80, ptr nonnull %a) #7
  br label %while.cond

while.cond:                                       ; preds = %while.end, %entry
  %call = call noundef nonnull align 8 dereferenceable(16) ptr @_ZNSirsERi(ptr noundef nonnull align 8 dereferenceable(16) @_ZSt3cin, ptr noundef nonnull align 4 dereferenceable(4) %a)
  %vtable = load ptr, ptr %call, align 8, !tbaa !13
  %vbase.offset.ptr = getelementptr i8, ptr %vtable, i64 -24
  %vbase.offset = load i64, ptr %vbase.offset.ptr, align 8
  %add.ptr = getelementptr inbounds i8, ptr %call, i64 %vbase.offset
  %_M_streambuf_state.i.i.i = getelementptr inbounds nuw i8, ptr %add.ptr, i64 32
  %0 = load i32, ptr %_M_streambuf_state.i.i.i, align 8, !tbaa !15
  %and.i.i.i = and i32 %0, 5
  %cmp.i.not.i = icmp eq i32 %and.i.i.i, 0
  %1 = load i32, ptr %a, align 16
  %cmp = icmp ne i32 %1, -1
  %2 = select i1 %cmp.i.not.i, i1 %cmp, i1 false
  br i1 %2, label %while.cond3, label %while.end20

while.cond3:                                      ; preds = %while.cond, %while.body15
  %indvars.iv = phi i64 [ %indvars.iv.next, %while.body15 ], [ 1, %while.cond ]
  %arrayidx4 = getelementptr inbounds nuw [20 x i32], ptr %a, i64 0, i64 %indvars.iv
  %call5 = call noundef nonnull align 8 dereferenceable(16) ptr @_ZNSirsERi(ptr noundef nonnull align 8 dereferenceable(16) @_ZSt3cin, ptr noundef nonnull align 4 dereferenceable(4) %arrayidx4)
  %vtable6 = load ptr, ptr %call5, align 8, !tbaa !13
  %vbase.offset.ptr7 = getelementptr i8, ptr %vtable6, i64 -24
  %vbase.offset8 = load i64, ptr %vbase.offset.ptr7, align 8
  %add.ptr9 = getelementptr inbounds i8, ptr %call5, i64 %vbase.offset8
  %_M_streambuf_state.i.i.i5 = getelementptr inbounds nuw i8, ptr %add.ptr9, i64 32
  %3 = load i32, ptr %_M_streambuf_state.i.i.i5, align 8, !tbaa !15
  %and.i.i.i6 = and i32 %3, 5
  %cmp.i.not.i7 = icmp eq i32 %and.i.i.i6, 0
  br i1 %cmp.i.not.i7, label %land.rhs11, label %while.end

land.rhs11:                                       ; preds = %while.cond3
  %4 = load i32, ptr %arrayidx4, align 4, !tbaa !5
  %tobool.not = icmp eq i32 %4, 0
  br i1 %tobool.not, label %while.end, label %while.body15

while.body15:                                     ; preds = %land.rhs11
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  br label %while.cond3, !llvm.loop !26

while.end:                                        ; preds = %while.cond3, %land.rhs11
  %5 = trunc nuw nsw i64 %indvars.iv to i32
  call void @qsort(ptr noundef nonnull %a, i64 noundef %indvars.iv, i64 noundef 4, ptr noundef nonnull @_Z3cmpPKvS0_)
  %call17 = call noundef i32 @_Z5chuliPii(ptr noundef nonnull %a, i32 noundef %5)
  %call18 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEi(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, i32 noundef %call17)
  %vtable.i = load ptr, ptr %call18, align 8, !tbaa !13
  %vbase.offset.ptr.i = getelementptr i8, ptr %vtable.i, i64 -24
  %vbase.offset.i = load i64, ptr %vbase.offset.ptr.i, align 8
  %add.ptr.i = getelementptr inbounds i8, ptr %call18, i64 %vbase.offset.i
  %call.i8 = call noundef signext i8 @_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc(ptr noundef nonnull align 8 dereferenceable(264) %add.ptr.i, i8 noundef signext 10)
  %call1.i = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8) %call18, i8 noundef signext %call.i8)
  %call.i.i = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo5flushEv(ptr noundef nonnull align 8 dereferenceable(8) %call1.i)
  br label %while.cond, !llvm.loop !27

while.end20:                                      ; preds = %while.cond
  call void @llvm.lifetime.end.p0(i64 80, ptr nonnull %a) #7
  ret i32 0
}

declare noundef nonnull align 8 dereferenceable(16) ptr @_ZNSirsERi(ptr noundef nonnull align 8 dereferenceable(16), ptr noundef nonnull align 4 dereferenceable(4)) local_unnamed_addr #3

; Function Attrs: nofree
declare void @qsort(ptr noundef, i64 noundef, i64 noundef, ptr noundef captures(none)) local_unnamed_addr #4

declare noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEi(ptr noundef nonnull align 8 dereferenceable(8), i32 noundef) local_unnamed_addr #3

declare noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8), i8 noundef signext) local_unnamed_addr #3

; Function Attrs: mustprogress uwtable
declare noundef signext i8 @_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc(ptr noundef nonnull align 8 dereferenceable(264), i8 noundef signext) local_unnamed_addr #5 align 2

declare noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo5flushEv(ptr noundef nonnull align 8 dereferenceable(8)) local_unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smax.i32(i32, i32) #6

attributes #0 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { mustprogress norecurse uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nofree "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
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
!15 = !{!16, !19, i64 32}
!16 = !{!"_ZTSSt8ios_base", !17, i64 8, !17, i64 16, !18, i64 24, !19, i64 28, !19, i64 32, !20, i64 40, !22, i64 48, !7, i64 64, !6, i64 192, !23, i64 200, !24, i64 208}
!17 = !{!"long", !7, i64 0}
!18 = !{!"_ZTSSt13_Ios_Fmtflags", !7, i64 0}
!19 = !{!"_ZTSSt12_Ios_Iostate", !7, i64 0}
!20 = !{!"p1 _ZTSNSt8ios_base14_Callback_listE", !21, i64 0}
!21 = !{!"any pointer", !7, i64 0}
!22 = !{!"_ZTSNSt8ios_base6_WordsE", !21, i64 0, !17, i64 8}
!23 = !{!"p1 _ZTSNSt8ios_base6_WordsE", !21, i64 0}
!24 = !{!"_ZTSSt6locale", !25, i64 0}
!25 = !{!"p1 _ZTSNSt6locale5_ImplE", !21, i64 0}
!26 = distinct !{!26, !10, !11}
!27 = distinct !{!27, !10, !11}
