; ModuleID = '<stdin>'
source_filename = "/tmp/tmpcsoymfow.cpp"
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
  %num = alloca [30 x i32], align 16
  %len = alloca [30 x i32], align 16
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %n) #5
  %call = call noundef nonnull align 8 dereferenceable(16) ptr @_ZNSirsERi(ptr noundef nonnull align 8 dereferenceable(16) @_ZSt3cin, ptr noundef nonnull align 4 dereferenceable(4) %n)
  call void @llvm.lifetime.start.p0(i64 120, ptr nonnull %num) #5
  call void @llvm.lifetime.start.p0(i64 120, ptr nonnull %len) #5
  br label %for.cond

for.cond:                                         ; preds = %for.body, %entry
  %indvars.iv = phi i64 [ %indvars.iv.next, %for.body ], [ 0, %entry ]
  %0 = load i32, ptr %n, align 4, !tbaa !5
  %1 = sext i32 %0 to i64
  %cmp = icmp slt i64 %indvars.iv, %1
  br i1 %cmp, label %for.body, label %for.cond.cleanup

for.cond.cleanup:                                 ; preds = %for.cond
  store i32 1, ptr %len, align 16, !tbaa !5
  %smax = call i32 @llvm.smax.i32(i32 %0, i32 1)
  %wide.trip.count29 = zext nneg i32 %smax to i64
  br label %for.cond4

for.body:                                         ; preds = %for.cond
  %arrayidx = getelementptr inbounds nuw [30 x i32], ptr %num, i64 0, i64 %indvars.iv
  %call1 = call noundef nonnull align 8 dereferenceable(16) ptr @_ZNSirsERi(ptr noundef nonnull align 8 dereferenceable(16) @_ZSt3cin, ptr noundef nonnull align 4 dereferenceable(4) %arrayidx)
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  br label %for.cond, !llvm.loop !9

for.cond4:                                        ; preds = %for.cond.cleanup10, %for.cond.cleanup
  %indvars.iv25 = phi i64 [ %indvars.iv.next26, %for.cond.cleanup10 ], [ 1, %for.cond.cleanup ]
  %exitcond30.not = icmp eq i64 %indvars.iv25, %wide.trip.count29
  br i1 %exitcond30.not, label %for.cond37, label %for.cond8.preheader

for.cond8.preheader:                              ; preds = %for.cond4
  %arrayidx15 = getelementptr inbounds nuw [30 x i32], ptr %num, i64 0, i64 %indvars.iv25
  %2 = load i32, ptr %arrayidx15, align 4, !tbaa !5
  %arrayidx27 = getelementptr inbounds nuw [30 x i32], ptr %len, i64 0, i64 %indvars.iv25
  br label %for.cond8

for.cond8:                                        ; preds = %for.cond8.preheader, %if.end
  %indvars.iv22 = phi i64 [ 0, %for.cond8.preheader ], [ %indvars.iv.next23, %if.end ]
  %max.0 = phi i32 [ 0, %for.cond8.preheader ], [ %max.1, %if.end ]
  %exitcond.not = icmp eq i64 %indvars.iv22, %indvars.iv25
  br i1 %exitcond.not, label %for.cond.cleanup10, label %for.body11

for.cond.cleanup10:                               ; preds = %for.cond8
  %indvars.iv.next26 = add nuw nsw i64 %indvars.iv25, 1
  br label %for.cond4, !llvm.loop !12

for.body11:                                       ; preds = %for.cond8
  %arrayidx13 = getelementptr inbounds nuw [30 x i32], ptr %num, i64 0, i64 %indvars.iv22
  %3 = load i32, ptr %arrayidx13, align 4, !tbaa !5
  %cmp16.not = icmp slt i32 %3, %2
  br i1 %cmp16.not, label %if.end, label %land.lhs.true

land.lhs.true:                                    ; preds = %for.body11
  %arrayidx18 = getelementptr inbounds nuw [30 x i32], ptr %len, i64 0, i64 %indvars.iv22
  %4 = load i32, ptr %arrayidx18, align 4, !tbaa !5
  %spec.select = call i32 @llvm.smax.i32(i32 %4, i32 %max.0)
  br label %if.end

if.end:                                           ; preds = %land.lhs.true, %for.body11
  %max.1 = phi i32 [ %max.0, %for.body11 ], [ %spec.select, %land.lhs.true ]
  %add = add nuw nsw i32 %max.1, 1
  store i32 %add, ptr %arrayidx27, align 4, !tbaa !5
  %indvars.iv.next23 = add nuw nsw i64 %indvars.iv22, 1
  br label %for.cond8, !llvm.loop !13

for.cond37:                                       ; preds = %for.cond4, %for.body40
  %indvars.iv31 = phi i64 [ %indvars.iv.next32, %for.body40 ], [ 1, %for.cond4 ]
  %l.0 = phi i32 [ %spec.select19, %for.body40 ], [ 1, %for.cond4 ]
  %exitcond34.not = icmp eq i64 %indvars.iv31, %wide.trip.count29
  br i1 %exitcond34.not, label %for.cond.cleanup39, label %for.body40

for.cond.cleanup39:                               ; preds = %for.cond37
  %call51 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEi(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, i32 noundef %l.0)
  %vtable.i = load ptr, ptr %call51, align 8, !tbaa !14
  %vbase.offset.ptr.i = getelementptr i8, ptr %vtable.i, i64 -24
  %vbase.offset.i = load i64, ptr %vbase.offset.ptr.i, align 8
  %add.ptr.i = getelementptr inbounds i8, ptr %call51, i64 %vbase.offset.i
  %call.i20 = call noundef signext i8 @_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc(ptr noundef nonnull align 8 dereferenceable(264) %add.ptr.i, i8 noundef signext 10)
  %call1.i = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8) %call51, i8 noundef signext %call.i20)
  %call.i.i = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo5flushEv(ptr noundef nonnull align 8 dereferenceable(8) %call1.i)
  call void @llvm.lifetime.end.p0(i64 120, ptr nonnull %len) #5
  call void @llvm.lifetime.end.p0(i64 120, ptr nonnull %num) #5
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %n) #5
  ret i32 0

for.body40:                                       ; preds = %for.cond37
  %arrayidx42 = getelementptr inbounds nuw [30 x i32], ptr %len, i64 0, i64 %indvars.iv31
  %5 = load i32, ptr %arrayidx42, align 4, !tbaa !5
  %spec.select19 = call i32 @llvm.smax.i32(i32 %5, i32 %l.0)
  %indvars.iv.next32 = add nuw nsw i64 %indvars.iv31, 1
  br label %for.cond37, !llvm.loop !16
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr captures(none)) #1

declare noundef nonnull align 8 dereferenceable(16) ptr @_ZNSirsERi(ptr noundef nonnull align 8 dereferenceable(16), ptr noundef nonnull align 4 dereferenceable(4)) local_unnamed_addr #2

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr captures(none)) #1

declare noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEi(ptr noundef nonnull align 8 dereferenceable(8), i32 noundef) local_unnamed_addr #2

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
!13 = distinct !{!13, !10, !11}
!14 = !{!15, !15, i64 0}
!15 = !{!"vtable pointer", !8, i64 0}
!16 = distinct !{!16, !10, !11}
