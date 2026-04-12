; ModuleID = '<stdin>'
source_filename = "/tmp/tmp7ykllhun.cpp"
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
  %a = alloca [30 x i32], align 16
  %b = alloca [30 x i32], align 16
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %n) #6
  call void @llvm.lifetime.start.p0(i64 120, ptr nonnull %a) #6
  call void @llvm.lifetime.start.p0(i64 120, ptr nonnull %b) #6
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(120) %b, i8 0, i64 120, i1 false)
  %call = call noundef nonnull align 8 dereferenceable(16) ptr @_ZNSirsERi(ptr noundef nonnull align 8 dereferenceable(16) @_ZSt3cin, ptr noundef nonnull align 4 dereferenceable(4) %n)
  br label %for.cond

for.cond:                                         ; preds = %for.body, %entry
  %indvars.iv = phi i64 [ %indvars.iv.next, %for.body ], [ 1, %entry ]
  %0 = load i32, ptr %n, align 4, !tbaa !5
  %1 = sext i32 %0 to i64
  %cmp.not = icmp sgt i64 %indvars.iv, %1
  br i1 %cmp.not, label %for.cond2.preheader, label %for.body

for.cond2.preheader:                              ; preds = %for.cond
  %2 = zext i32 %0 to i64
  br label %for.cond2

for.body:                                         ; preds = %for.cond
  %arrayidx = getelementptr inbounds nuw [30 x i32], ptr %a, i64 0, i64 %indvars.iv
  %call1 = call noundef nonnull align 8 dereferenceable(16) ptr @_ZNSirsERi(ptr noundef nonnull align 8 dereferenceable(16) @_ZSt3cin, ptr noundef nonnull align 4 dereferenceable(4) %arrayidx)
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  br label %for.cond, !llvm.loop !9

for.cond2:                                        ; preds = %for.cond2.preheader, %for.end23
  %indvars.iv25 = phi i64 [ %2, %for.cond2.preheader ], [ %indvars.iv.next26, %for.end23 ]
  %max.0 = phi i32 [ 0, %for.cond2.preheader ], [ %max.1, %for.end23 ]
  %3 = trunc nuw i64 %indvars.iv25 to i32
  %cmp3 = icmp sgt i32 %3, 0
  br i1 %cmp3, label %for.cond6.preheader, label %for.cond33.preheader

for.cond33.preheader:                             ; preds = %for.cond2
  %smax = call i32 @llvm.smax.i32(i32 %0, i32 0)
  %4 = add nuw i32 %smax, 1
  %wide.trip.count = zext i32 %4 to i64
  br label %for.cond33

for.cond6.preheader:                              ; preds = %for.cond2
  %arrayidx10 = getelementptr inbounds nuw [30 x i32], ptr %a, i64 0, i64 %indvars.iv25
  br label %for.cond6

for.cond6:                                        ; preds = %for.cond6.preheader, %for.inc21
  %indvars.iv27 = phi i64 [ %indvars.iv25, %for.cond6.preheader ], [ %indvars.iv.next28, %for.inc21 ]
  %max.1 = phi i32 [ 0, %for.cond6.preheader ], [ %max.2, %for.inc21 ]
  %flag.0 = phi i32 [ 0, %for.cond6.preheader ], [ %flag.1, %for.inc21 ]
  %5 = trunc nuw i64 %indvars.iv27 to i32
  %cmp7.not = icmp slt i32 %0, %5
  br i1 %cmp7.not, label %for.end23, label %for.body8

for.body8:                                        ; preds = %for.cond6
  %6 = load i32, ptr %arrayidx10, align 4, !tbaa !5
  %arrayidx12 = getelementptr inbounds nuw [30 x i32], ptr %a, i64 0, i64 %indvars.iv27
  %7 = load i32, ptr %arrayidx12, align 4, !tbaa !5
  %cmp13.not = icmp slt i32 %6, %7
  br i1 %cmp13.not, label %for.inc21, label %if.then

if.then:                                          ; preds = %for.body8
  %arrayidx15 = getelementptr inbounds nuw [30 x i32], ptr %b, i64 0, i64 %indvars.iv27
  %8 = load i32, ptr %arrayidx15, align 4, !tbaa !5
  %spec.select = call i32 @llvm.smax.i32(i32 %8, i32 %max.1)
  br label %for.inc21

for.inc21:                                        ; preds = %if.then, %for.body8
  %max.2 = phi i32 [ %max.1, %for.body8 ], [ %spec.select, %if.then ]
  %flag.1 = phi i32 [ %flag.0, %for.body8 ], [ 1, %if.then ]
  %indvars.iv.next28 = add nuw nsw i64 %indvars.iv27, 1
  br label %for.cond6, !llvm.loop !12

for.end23:                                        ; preds = %for.cond6
  %spec.select35 = add nuw nsw i32 %max.1, %flag.0
  %9 = getelementptr inbounds nuw [30 x i32], ptr %b, i64 0, i64 %indvars.iv25
  store i32 %spec.select35, ptr %9, align 4, !tbaa !5
  %indvars.iv.next26 = add nsw i64 %indvars.iv25, -1
  br label %for.cond2, !llvm.loop !13

for.cond33:                                       ; preds = %for.cond33.preheader, %for.body36
  %indvars.iv31 = phi i64 [ 1, %for.cond33.preheader ], [ %indvars.iv.next32, %for.body36 ]
  %max.3 = phi i32 [ %max.0, %for.cond33.preheader ], [ %spec.select21, %for.body36 ]
  %exitcond = icmp eq i64 %indvars.iv31, %wide.trip.count
  br i1 %exitcond, label %for.cond.cleanup35, label %for.body36

for.cond.cleanup35:                               ; preds = %for.cond33
  %call47 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEi(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, i32 noundef %max.3)
  %vtable.i = load ptr, ptr %call47, align 8, !tbaa !14
  %vbase.offset.ptr.i = getelementptr i8, ptr %vtable.i, i64 -24
  %vbase.offset.i = load i64, ptr %vbase.offset.ptr.i, align 8
  %add.ptr.i = getelementptr inbounds i8, ptr %call47, i64 %vbase.offset.i
  %call.i22 = call noundef signext i8 @_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc(ptr noundef nonnull align 8 dereferenceable(264) %add.ptr.i, i8 noundef signext 10)
  %call1.i = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8) %call47, i8 noundef signext %call.i22)
  %call.i.i = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo5flushEv(ptr noundef nonnull align 8 dereferenceable(8) %call1.i)
  call void @llvm.lifetime.end.p0(i64 120, ptr nonnull %b) #6
  call void @llvm.lifetime.end.p0(i64 120, ptr nonnull %a) #6
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %n) #6
  ret i32 0

for.body36:                                       ; preds = %for.cond33
  %arrayidx38 = getelementptr inbounds nuw [30 x i32], ptr %b, i64 0, i64 %indvars.iv31
  %10 = load i32, ptr %arrayidx38, align 4, !tbaa !5
  %spec.select21 = call i32 @llvm.smax.i32(i32 %10, i32 %max.3)
  %indvars.iv.next32 = add nuw nsw i64 %indvars.iv31, 1
  br label %for.cond33, !llvm.loop !16
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
!16 = distinct !{!16, !10, !11}
