; ModuleID = '<stdin>'
source_filename = "/tmp/tmpl9ikpfz7.cpp"
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
  %num = alloca [16 x i32], align 16
  %n = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %num) #5
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %n) #5
  br label %do.body

do.body:                                          ; preds = %do.cond, %entry
  %i.0 = phi i32 [ 1, %entry ], [ %i.1.ph, %do.cond ]
  %call = call noundef nonnull align 8 dereferenceable(16) ptr @_ZNSirsERi(ptr noundef nonnull align 8 dereferenceable(16) @_ZSt3cin, ptr noundef nonnull align 4 dereferenceable(4) %n)
  %0 = load i32, ptr %n, align 4, !tbaa !5
  switch i32 %0, label %if.else [
    i32 -1, label %do.end
    i32 0, label %for.cond.preheader
  ]

for.cond.preheader:                               ; preds = %do.body
  %smax = call i32 @llvm.smax.i32(i32 %i.0, i32 1)
  %wide.trip.count16 = zext nneg i32 %smax to i64
  %wide.trip.count = zext i32 %i.0 to i64
  br label %for.cond

for.cond:                                         ; preds = %for.cond.preheader, %for.inc12
  %indvars.iv13 = phi i64 [ 1, %for.cond.preheader ], [ %indvars.iv.next14, %for.inc12 ]
  %ans.0 = phi i32 [ 0, %for.cond.preheader ], [ %ans.1, %for.inc12 ]
  %exitcond17.not = icmp eq i64 %indvars.iv13, %wide.trip.count16
  br i1 %exitcond17.not, label %for.end14, label %for.cond4.preheader

for.cond4.preheader:                              ; preds = %for.cond
  %arrayidx = getelementptr inbounds nuw [16 x i32], ptr %num, i64 0, i64 %indvars.iv13
  br label %for.cond4

for.cond4:                                        ; preds = %for.cond4.preheader, %for.body7
  %indvars.iv = phi i64 [ 1, %for.cond4.preheader ], [ %indvars.iv.next, %for.body7 ]
  %ans.1 = phi i32 [ %ans.0, %for.cond4.preheader ], [ %spec.select, %for.body7 ]
  %exitcond.not = icmp eq i64 %indvars.iv, %wide.trip.count
  br i1 %exitcond.not, label %for.inc12, label %for.body7

for.body7:                                        ; preds = %for.cond4
  %1 = load i32, ptr %arrayidx, align 4, !tbaa !5
  %arrayidx9 = getelementptr inbounds nuw [16 x i32], ptr %num, i64 0, i64 %indvars.iv
  %2 = load i32, ptr %arrayidx9, align 4, !tbaa !5
  %mul = shl nsw i32 %2, 1
  %cmp10 = icmp eq i32 %1, %mul
  %add = zext i1 %cmp10 to i32
  %spec.select = add nsw i32 %ans.1, %add
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  br label %for.cond4, !llvm.loop !9

for.inc12:                                        ; preds = %for.cond4
  %indvars.iv.next14 = add nuw nsw i64 %indvars.iv13, 1
  br label %for.cond, !llvm.loop !12

for.end14:                                        ; preds = %for.cond
  %call15 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEi(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, i32 noundef %ans.0)
  %vtable.i = load ptr, ptr %call15, align 8, !tbaa !13
  %vbase.offset.ptr.i = getelementptr i8, ptr %vtable.i, i64 -24
  %vbase.offset.i = load i64, ptr %vbase.offset.ptr.i, align 8
  %add.ptr.i = getelementptr inbounds i8, ptr %call15, i64 %vbase.offset.i
  %call.i9 = call noundef signext i8 @_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc(ptr noundef nonnull align 8 dereferenceable(264) %add.ptr.i, i8 noundef signext 10)
  %call1.i = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8) %call15, i8 noundef signext %call.i9)
  %call.i.i = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo5flushEv(ptr noundef nonnull align 8 dereferenceable(8) %call1.i)
  %.pr.pre = load i32, ptr %n, align 4, !tbaa !5
  br label %do.cond

if.else:                                          ; preds = %do.body
  %idxprom17 = sext i32 %i.0 to i64
  %arrayidx18 = getelementptr inbounds [16 x i32], ptr %num, i64 0, i64 %idxprom17
  store i32 %0, ptr %arrayidx18, align 4, !tbaa !5
  %add19 = add nsw i32 %i.0, 1
  br label %do.cond

do.cond:                                          ; preds = %if.else, %for.end14
  %.pr = phi i32 [ %0, %if.else ], [ %.pr.pre, %for.end14 ]
  %i.1.ph = phi i32 [ %add19, %if.else ], [ 1, %for.end14 ]
  %cmp22.not = icmp eq i32 %.pr, -1
  br i1 %cmp22.not, label %do.end, label %do.body, !llvm.loop !15

do.end:                                           ; preds = %do.body, %do.cond
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %n) #5
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %num) #5
  ret i32 0
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr captures(none)) #1

declare noundef nonnull align 8 dereferenceable(16) ptr @_ZNSirsERi(ptr noundef nonnull align 8 dereferenceable(16), ptr noundef nonnull align 4 dereferenceable(4)) local_unnamed_addr #2

declare noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEi(ptr noundef nonnull align 8 dereferenceable(8), i32 noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr captures(none)) #1

declare noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8), i8 noundef signext) local_unnamed_addr #2

; Function Attrs: mustprogress uwtable
declare noundef signext i8 @_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc(ptr noundef nonnull align 8 dereferenceable(264), i8 noundef signext) local_unnamed_addr #3 align 2

declare noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo5flushEv(ptr noundef nonnull align 8 dereferenceable(8)) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smax.i32(i32, i32) #4

attributes #0 = { mustprogress norecurse uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
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
!12 = distinct !{!12, !10, !11}
!13 = !{!14, !14, i64 0}
!14 = !{!"vtable pointer", !8, i64 0}
!15 = distinct !{!15, !10, !11}
