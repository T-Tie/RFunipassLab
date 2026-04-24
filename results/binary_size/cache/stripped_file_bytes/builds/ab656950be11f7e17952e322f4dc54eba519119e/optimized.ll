; ModuleID = '<stdin>'
source_filename = "/tmp/tmpv_7nd6bo.cpp"
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
  %a = alloca i32, align 4
  %s = alloca [15 x i32], align 16
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %a) #5
  %call = call noundef nonnull align 8 dereferenceable(16) ptr @_ZNSirsERi(ptr noundef nonnull align 8 dereferenceable(16) @_ZSt3cin, ptr noundef nonnull align 4 dereferenceable(4) %a)
  br label %while.cond

while.cond:                                       ; preds = %for.cond.cleanup, %entry
  %0 = load i32, ptr %a, align 4, !tbaa !5
  %cmp.not = icmp eq i32 %0, -1
  br i1 %cmp.not, label %while.end, label %while.body

while.body:                                       ; preds = %while.cond
  call void @llvm.lifetime.start.p0(i64 60, ptr nonnull %s) #5
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(60) %s, i8 0, i64 60, i1 false)
  store i32 %0, ptr %s, align 16, !tbaa !5
  br label %do.body

do.body:                                          ; preds = %do.body, %while.body
  %indvars.iv = phi i64 [ %indvars.iv.next, %do.body ], [ 1, %while.body ]
  %call1 = call noundef nonnull align 8 dereferenceable(16) ptr @_ZNSirsERi(ptr noundef nonnull align 8 dereferenceable(16) @_ZSt3cin, ptr noundef nonnull align 4 dereferenceable(4) %a)
  %1 = load i32, ptr %a, align 4, !tbaa !5
  %arrayidx2 = getelementptr inbounds nuw [15 x i32], ptr %s, i64 0, i64 %indvars.iv
  store i32 %1, ptr %arrayidx2, align 4, !tbaa !5
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  %cmp3.not = icmp eq i32 %1, 0
  br i1 %cmp3.not, label %for.cond, label %do.body, !llvm.loop !9

for.cond:                                         ; preds = %do.body, %for.cond.cleanup7
  %indvars.iv13 = phi i64 [ %indvars.iv.next14, %for.cond.cleanup7 ], [ 0, %do.body ]
  %m.0 = phi i32 [ %m.1, %for.cond.cleanup7 ], [ 0, %do.body ]
  %exitcond16.not = icmp eq i64 %indvars.iv13, 15
  br i1 %exitcond16.not, label %for.cond.cleanup, label %for.cond5.preheader

for.cond5.preheader:                              ; preds = %for.cond
  %arrayidx12 = getelementptr inbounds nuw [15 x i32], ptr %s, i64 0, i64 %indvars.iv13
  %2 = load i32, ptr %arrayidx12, align 4, !tbaa !5
  %mul = shl nsw i32 %2, 1
  %cmp16.not = icmp ne i32 %2, 0
  br label %for.cond5

for.cond.cleanup:                                 ; preds = %for.cond
  %call22 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEi(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, i32 noundef %m.0)
  %vtable.i = load ptr, ptr %call22, align 8, !tbaa !12
  %vbase.offset.ptr.i = getelementptr i8, ptr %vtable.i, i64 -24
  %vbase.offset.i = load i64, ptr %vbase.offset.ptr.i, align 8
  %add.ptr.i = getelementptr inbounds i8, ptr %call22, i64 %vbase.offset.i
  %call.i8 = call noundef signext i8 @_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc(ptr noundef nonnull align 8 dereferenceable(264) %add.ptr.i, i8 noundef signext 10)
  %call1.i = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8) %call22, i8 noundef signext %call.i8)
  %call.i.i = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo5flushEv(ptr noundef nonnull align 8 dereferenceable(8) %call1.i)
  %call24 = call noundef nonnull align 8 dereferenceable(16) ptr @_ZNSirsERi(ptr noundef nonnull align 8 dereferenceable(16) @_ZSt3cin, ptr noundef nonnull align 4 dereferenceable(4) %a)
  call void @llvm.lifetime.end.p0(i64 60, ptr nonnull %s) #5
  br label %while.cond, !llvm.loop !14

for.cond5:                                        ; preds = %for.cond5.preheader, %for.body8
  %indvars.iv10 = phi i64 [ 0, %for.cond5.preheader ], [ %indvars.iv.next11, %for.body8 ]
  %m.1 = phi i32 [ %m.0, %for.cond5.preheader ], [ %m.2, %for.body8 ]
  %exitcond.not = icmp eq i64 %indvars.iv10, 15
  br i1 %exitcond.not, label %for.cond.cleanup7, label %for.body8

for.cond.cleanup7:                                ; preds = %for.cond5
  %indvars.iv.next14 = add nuw nsw i64 %indvars.iv13, 1
  br label %for.cond, !llvm.loop !15

for.body8:                                        ; preds = %for.cond5
  %arrayidx10 = getelementptr inbounds nuw [15 x i32], ptr %s, i64 0, i64 %indvars.iv10
  %3 = load i32, ptr %arrayidx10, align 4, !tbaa !5
  %cmp13 = icmp eq i32 %3, %mul
  %or.cond.not = and i1 %cmp16.not, %cmp13
  %inc17 = zext i1 %or.cond.not to i32
  %m.2 = add nsw i32 %m.1, %inc17
  %indvars.iv.next11 = add nuw nsw i64 %indvars.iv10, 1
  br label %for.cond5, !llvm.loop !16

while.end:                                        ; preds = %while.cond
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %a) #5
  ret i32 0
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr captures(none)) #1

declare noundef nonnull align 8 dereferenceable(16) ptr @_ZNSirsERi(ptr noundef nonnull align 8 dereferenceable(16), ptr noundef nonnull align 4 dereferenceable(4)) local_unnamed_addr #2

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #3

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr captures(none)) #1

declare noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEi(ptr noundef nonnull align 8 dereferenceable(8), i32 noundef) local_unnamed_addr #2

declare noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8), i8 noundef signext) local_unnamed_addr #2

; Function Attrs: mustprogress uwtable
declare noundef signext i8 @_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc(ptr noundef nonnull align 8 dereferenceable(264), i8 noundef signext) local_unnamed_addr #4 align 2

declare noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo5flushEv(ptr noundef nonnull align 8 dereferenceable(8)) local_unnamed_addr #2

attributes #0 = { mustprogress norecurse uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #4 = { mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nounwind }

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
!12 = !{!13, !13, i64 0}
!13 = !{!"vtable pointer", !8, i64 0}
!14 = distinct !{!14, !10, !11}
!15 = distinct !{!15, !10, !11}
!16 = distinct !{!16, !10, !11}
