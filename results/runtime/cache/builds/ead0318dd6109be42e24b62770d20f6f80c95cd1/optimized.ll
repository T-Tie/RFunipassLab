; ModuleID = '<stdin>'
source_filename = "/tmp/tmpdbqh_2ng.cpp"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

module asm ".globl _ZSt21ios_base_library_initv"

%"class.std::basic_ostream" = type { ptr, %"class.std::basic_ios" }
%"class.std::basic_ios" = type { %"class.std::ios_base", ptr, i8, i8, ptr, ptr, ptr, ptr }
%"class.std::ios_base" = type { ptr, i64, i64, i32, i32, i32, ptr, %"struct.std::ios_base::_Words", [8 x %"struct.std::ios_base::_Words"], i32, ptr, %"class.std::locale" }
%"struct.std::ios_base::_Words" = type { ptr, i64 }
%"class.std::locale" = type { ptr }

@a = dso_local global [36 x i32] zeroinitializer, align 16
@f = dso_local local_unnamed_addr global [36 x i32] zeroinitializer, align 16
@.str = private unnamed_addr constant [3 x i8] c"%d\00", align 1
@_ZSt4cout = external global %"class.std::basic_ostream", align 8

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define dso_local noundef i32 @_Z3maxii(i32 noundef %a, i32 noundef %b) local_unnamed_addr #0 {
entry:
  %a.b = tail call i32 @llvm.smax.i32(i32 %a, i32 %b)
  ret i32 %a.b
}

; Function Attrs: mustprogress norecurse uwtable
define dso_local noundef i32 @main() local_unnamed_addr #1 {
entry:
  %k = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %k) #6
  %call = call i32 (ptr, ...) @__isoc23_scanf(ptr noundef nonnull @.str, ptr noundef nonnull %k)
  br label %for.cond

for.cond:                                         ; preds = %for.body, %entry
  %indvars.iv = phi i64 [ %indvars.iv.next, %for.body ], [ 1, %entry ]
  %0 = load i32, ptr %k, align 4, !tbaa !5
  %1 = sext i32 %0 to i64
  %cmp.not = icmp sgt i64 %indvars.iv, %1
  br i1 %cmp.not, label %for.end, label %for.body

for.body:                                         ; preds = %for.cond
  %arrayidx = getelementptr inbounds nuw [36 x i32], ptr @a, i64 0, i64 %indvars.iv
  %call1 = call i32 (ptr, ...) @__isoc23_scanf(ptr noundef nonnull @.str, ptr noundef nonnull %arrayidx)
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  br label %for.cond, !llvm.loop !9

for.end:                                          ; preds = %for.cond
  store i32 0, ptr @f, align 16, !tbaa !5
  %smax = call i32 @llvm.smax.i32(i32 %0, i32 0)
  %2 = add nuw i32 %smax, 1
  %wide.trip.count25 = zext i32 %2 to i64
  br label %for.cond2

for.cond2:                                        ; preds = %for.end24, %for.end
  %indvars.iv21 = phi i64 [ %indvars.iv.next22, %for.end24 ], [ 1, %for.end ]
  %ans.0 = phi i32 [ %a.b.i15, %for.end24 ], [ 0, %for.end ]
  %exitcond26 = icmp eq i64 %indvars.iv21, %wide.trip.count25
  br i1 %exitcond26, label %for.end30, label %for.body4

for.body4:                                        ; preds = %for.cond2
  %arrayidx6 = getelementptr inbounds nuw [36 x i32], ptr @f, i64 0, i64 %indvars.iv21
  store i32 1, ptr %arrayidx6, align 4, !tbaa !5
  %arrayidx11 = getelementptr inbounds nuw [36 x i32], ptr @a, i64 0, i64 %indvars.iv21
  br label %for.cond7

for.cond7:                                        ; preds = %for.inc22, %for.body4
  %3 = phi i32 [ %7, %for.inc22 ], [ 1, %for.body4 ]
  %indvars.iv18 = phi i64 [ %indvars.iv.next19, %for.inc22 ], [ 1, %for.body4 ]
  %exitcond.not = icmp eq i64 %indvars.iv18, %indvars.iv21
  br i1 %exitcond.not, label %for.end24, label %for.body9

for.body9:                                        ; preds = %for.cond7
  %4 = load i32, ptr %arrayidx11, align 4, !tbaa !5
  %arrayidx13 = getelementptr inbounds nuw [36 x i32], ptr @a, i64 0, i64 %indvars.iv18
  %5 = load i32, ptr %arrayidx13, align 4, !tbaa !5
  %cmp14.not = icmp sgt i32 %4, %5
  br i1 %cmp14.not, label %for.inc22, label %if.then

if.then:                                          ; preds = %for.body9
  %arrayidx18 = getelementptr inbounds nuw [36 x i32], ptr @f, i64 0, i64 %indvars.iv18
  %6 = load i32, ptr %arrayidx18, align 4, !tbaa !5
  %add = add nsw i32 %6, 1
  %a.b.i = call noundef i32 @llvm.smax.i32(i32 %3, i32 %add)
  store i32 %a.b.i, ptr %arrayidx6, align 4, !tbaa !5
  br label %for.inc22

for.inc22:                                        ; preds = %for.body9, %if.then
  %7 = phi i32 [ %3, %for.body9 ], [ %a.b.i, %if.then ]
  %indvars.iv.next19 = add nuw nsw i64 %indvars.iv18, 1
  br label %for.cond7, !llvm.loop !12

for.end24:                                        ; preds = %for.cond7
  %a.b.i15 = call noundef i32 @llvm.smax.i32(i32 %ans.0, i32 %3)
  %indvars.iv.next22 = add nuw nsw i64 %indvars.iv21, 1
  br label %for.cond2, !llvm.loop !13

for.end30:                                        ; preds = %for.cond2
  %call31 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEi(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, i32 noundef %ans.0)
  %vtable.i = load ptr, ptr %call31, align 8, !tbaa !14
  %vbase.offset.ptr.i = getelementptr i8, ptr %vtable.i, i64 -24
  %vbase.offset.i = load i64, ptr %vbase.offset.ptr.i, align 8
  %add.ptr.i = getelementptr inbounds i8, ptr %call31, i64 %vbase.offset.i
  %call.i16 = call noundef signext i8 @_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc(ptr noundef nonnull align 8 dereferenceable(264) %add.ptr.i, i8 noundef signext 10)
  %call1.i = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8) %call31, i8 noundef signext %call.i16)
  %call.i.i = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo5flushEv(ptr noundef nonnull align 8 dereferenceable(8) %call1.i)
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %k) #6
  ret i32 0
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr captures(none)) #2

declare i32 @__isoc23_scanf(ptr noundef, ...) local_unnamed_addr #3

declare noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEi(ptr noundef nonnull align 8 dereferenceable(8), i32 noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr captures(none)) #2

declare noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8), i8 noundef signext) local_unnamed_addr #3

; Function Attrs: mustprogress uwtable
declare noundef signext i8 @_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc(ptr noundef nonnull align 8 dereferenceable(264), i8 noundef signext) local_unnamed_addr #4 align 2

declare noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo5flushEv(ptr noundef nonnull align 8 dereferenceable(8)) local_unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smax.i32(i32, i32) #5

attributes #0 = { mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress norecurse uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
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
