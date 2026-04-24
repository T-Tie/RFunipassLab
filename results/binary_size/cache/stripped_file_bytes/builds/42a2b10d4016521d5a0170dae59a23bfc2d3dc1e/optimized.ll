; ModuleID = '<stdin>'
source_filename = "/tmp/tmphr0bq4l5.cpp"
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
  %k = alloca i32, align 4
  %h = alloca [30 x i32], align 16
  %l = alloca [30 x i32], align 16
  %r = alloca [30 x i32], align 16
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %k) #5
  call void @llvm.lifetime.start.p0(i64 120, ptr nonnull %h) #5
  call void @llvm.lifetime.start.p0(i64 120, ptr nonnull %l) #5
  call void @llvm.lifetime.start.p0(i64 120, ptr nonnull %r) #5
  %call = call noundef nonnull align 8 dereferenceable(16) ptr @_ZNSirsERi(ptr noundef nonnull align 8 dereferenceable(16) @_ZSt3cin, ptr noundef nonnull align 4 dereferenceable(4) %k)
  br label %for.cond

for.cond:                                         ; preds = %for.body, %entry
  %indvars.iv = phi i64 [ %indvars.iv.next, %for.body ], [ 0, %entry ]
  %0 = load i32, ptr %k, align 4, !tbaa !5
  %1 = sext i32 %0 to i64
  %cmp = icmp slt i64 %indvars.iv, %1
  br i1 %cmp, label %for.body, label %for.cond6.preheader

for.cond6.preheader:                              ; preds = %for.cond
  %smax = call i32 @llvm.smax.i32(i32 %0, i32 1)
  %wide.trip.count41 = zext nneg i32 %smax to i64
  br label %for.cond6

for.body:                                         ; preds = %for.cond
  %arrayidx = getelementptr inbounds nuw [30 x i32], ptr %h, i64 0, i64 %indvars.iv
  %call1 = call noundef nonnull align 8 dereferenceable(16) ptr @_ZNSirsERi(ptr noundef nonnull align 8 dereferenceable(16) @_ZSt3cin, ptr noundef nonnull align 4 dereferenceable(4) %arrayidx)
  %arrayidx3 = getelementptr inbounds nuw [30 x i32], ptr %l, i64 0, i64 %indvars.iv
  store i32 1, ptr %arrayidx3, align 4, !tbaa !5
  %arrayidx5 = getelementptr inbounds nuw [30 x i32], ptr %r, i64 0, i64 %indvars.iv
  store i32 1, ptr %arrayidx5, align 4, !tbaa !5
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  br label %for.cond, !llvm.loop !9

for.cond6:                                        ; preds = %for.cond6.preheader, %for.cond.cleanup
  %indvars.iv37 = phi i64 [ 1, %for.cond6.preheader ], [ %indvars.iv.next38, %for.cond.cleanup ]
  %exitcond42.not = icmp eq i64 %indvars.iv37, %wide.trip.count41
  br i1 %exitcond42.not, label %for.end32, label %for.cond9.preheader

for.cond9.preheader:                              ; preds = %for.cond6
  %arrayidx15 = getelementptr inbounds nuw [30 x i32], ptr %h, i64 0, i64 %indvars.iv37
  %2 = load i32, ptr %arrayidx15, align 4, !tbaa !5
  %arrayidx20 = getelementptr inbounds nuw [30 x i32], ptr %l, i64 0, i64 %indvars.iv37
  br label %for.cond9

for.cond9:                                        ; preds = %for.cond9.preheader, %for.inc27
  %indvars.iv34 = phi i64 [ 0, %for.cond9.preheader ], [ %indvars.iv.next35, %for.inc27 ]
  %exitcond.not = icmp eq i64 %indvars.iv34, %indvars.iv37
  br i1 %exitcond.not, label %for.cond.cleanup, label %for.body11

for.cond.cleanup:                                 ; preds = %for.cond9
  %indvars.iv.next38 = add nuw nsw i64 %indvars.iv37, 1
  br label %for.cond6, !llvm.loop !12

for.body11:                                       ; preds = %for.cond9
  %arrayidx13 = getelementptr inbounds nuw [30 x i32], ptr %h, i64 0, i64 %indvars.iv34
  %3 = load i32, ptr %arrayidx13, align 4, !tbaa !5
  %cmp16.not = icmp slt i32 %3, %2
  br i1 %cmp16.not, label %for.inc27, label %land.lhs.true

land.lhs.true:                                    ; preds = %for.body11
  %arrayidx18 = getelementptr inbounds nuw [30 x i32], ptr %l, i64 0, i64 %indvars.iv34
  %4 = load i32, ptr %arrayidx18, align 4, !tbaa !5
  %5 = load i32, ptr %arrayidx20, align 4, !tbaa !5
  %cmp21.not = icmp slt i32 %4, %5
  br i1 %cmp21.not, label %for.inc27, label %if.then

if.then:                                          ; preds = %land.lhs.true
  %add = add nsw i32 %4, 1
  store i32 %add, ptr %arrayidx20, align 4, !tbaa !5
  br label %for.inc27

for.inc27:                                        ; preds = %for.body11, %land.lhs.true, %if.then
  %indvars.iv.next35 = add nuw nsw i64 %indvars.iv34, 1
  br label %for.cond9, !llvm.loop !13

for.end32:                                        ; preds = %for.cond6
  %sub = add i32 %0, -2
  %6 = zext i32 %sub to i64
  br label %for.cond33

for.cond33:                                       ; preds = %for.cond.cleanup40, %for.end32
  %indvars.iv43 = phi i64 [ %indvars.iv.next44, %for.cond.cleanup40 ], [ %6, %for.end32 ]
  %7 = trunc nuw i64 %indvars.iv43 to i32
  %cmp34 = icmp sgt i32 %7, 0
  br i1 %cmp34, label %for.cond38.preheader, label %for.cond66.preheader

for.cond66.preheader:                             ; preds = %for.cond33
  %smax50 = call i32 @llvm.smax.i32(i32 %0, i32 0)
  %wide.trip.count = zext nneg i32 %smax50 to i64
  br label %for.cond66

for.cond38.preheader:                             ; preds = %for.cond33
  %arrayidx45 = getelementptr inbounds nuw [30 x i32], ptr %h, i64 0, i64 %indvars.iv43
  %arrayidx52 = getelementptr inbounds nuw [30 x i32], ptr %r, i64 0, i64 %indvars.iv43
  br label %for.cond38

for.cond38:                                       ; preds = %for.cond38.backedge, %for.cond38.preheader
  %j36.0.in = phi i32 [ %0, %for.cond38.preheader ], [ %j36.0, %for.cond38.backedge ]
  %j36.0 = add nsw i32 %j36.0.in, -1
  %cmp39 = icmp sgt i32 %j36.0, %7
  br i1 %cmp39, label %for.body41, label %for.cond.cleanup40

for.cond.cleanup40:                               ; preds = %for.cond38
  %indvars.iv.next44 = add nsw i64 %indvars.iv43, -1
  br label %for.cond33, !llvm.loop !14

for.body41:                                       ; preds = %for.cond38
  %idxprom42 = zext nneg i32 %j36.0 to i64
  %arrayidx43 = getelementptr inbounds nuw [30 x i32], ptr %h, i64 0, i64 %idxprom42
  %8 = load i32, ptr %arrayidx43, align 4, !tbaa !5
  %9 = load i32, ptr %arrayidx45, align 4, !tbaa !5
  %cmp46.not = icmp sgt i32 %8, %9
  br i1 %cmp46.not, label %for.cond38.backedge, label %land.lhs.true47

for.cond38.backedge:                              ; preds = %for.body41, %land.lhs.true47, %if.then54
  br label %for.cond38, !llvm.loop !15

land.lhs.true47:                                  ; preds = %for.body41
  %arrayidx49 = getelementptr inbounds nuw [30 x i32], ptr %r, i64 0, i64 %idxprom42
  %10 = load i32, ptr %arrayidx49, align 4, !tbaa !5
  %11 = load i32, ptr %arrayidx52, align 4, !tbaa !5
  %cmp53.not = icmp slt i32 %10, %11
  br i1 %cmp53.not, label %for.cond38.backedge, label %if.then54

if.then54:                                        ; preds = %land.lhs.true47
  %add50 = add nsw i32 %10, 1
  store i32 %add50, ptr %arrayidx52, align 4, !tbaa !5
  br label %for.cond38.backedge

for.cond66:                                       ; preds = %for.cond66.preheader, %for.body68
  %indvars.iv46 = phi i64 [ 0, %for.cond66.preheader ], [ %indvars.iv.next47, %for.body68 ]
  %m.0 = phi i32 [ 0, %for.cond66.preheader ], [ %spec.select, %for.body68 ]
  %exitcond51.not = icmp eq i64 %indvars.iv46, %wide.trip.count
  br i1 %exitcond51.not, label %for.end86, label %for.body68

for.body68:                                       ; preds = %for.cond66
  %arrayidx70 = getelementptr inbounds nuw [30 x i32], ptr %l, i64 0, i64 %indvars.iv46
  %12 = load i32, ptr %arrayidx70, align 4, !tbaa !5
  %arrayidx72 = getelementptr inbounds nuw [30 x i32], ptr %r, i64 0, i64 %indvars.iv46
  %13 = load i32, ptr %arrayidx72, align 4, !tbaa !5
  %add73 = add i32 %12, -1
  %sub74 = add i32 %add73, %13
  %spec.select = call i32 @llvm.smax.i32(i32 %sub74, i32 %m.0)
  %indvars.iv.next47 = add nuw nsw i64 %indvars.iv46, 1
  br label %for.cond66, !llvm.loop !16

for.end86:                                        ; preds = %for.cond66
  %call87 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEi(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, i32 noundef %m.0)
  %vtable.i = load ptr, ptr %call87, align 8, !tbaa !17
  %vbase.offset.ptr.i = getelementptr i8, ptr %vtable.i, i64 -24
  %vbase.offset.i = load i64, ptr %vbase.offset.ptr.i, align 8
  %add.ptr.i = getelementptr inbounds i8, ptr %call87, i64 %vbase.offset.i
  %call.i32 = call noundef signext i8 @_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc(ptr noundef nonnull align 8 dereferenceable(264) %add.ptr.i, i8 noundef signext 10)
  %call1.i = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8) %call87, i8 noundef signext %call.i32)
  %call.i.i = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo5flushEv(ptr noundef nonnull align 8 dereferenceable(8) %call1.i)
  call void @llvm.lifetime.end.p0(i64 120, ptr nonnull %r) #5
  call void @llvm.lifetime.end.p0(i64 120, ptr nonnull %l) #5
  call void @llvm.lifetime.end.p0(i64 120, ptr nonnull %h) #5
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %k) #5
  ret i32 0
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
!14 = distinct !{!14, !10, !11}
!15 = distinct !{!15, !10, !11}
!16 = distinct !{!16, !10, !11}
!17 = !{!18, !18, i64 0}
!18 = !{!"vtable pointer", !8, i64 0}
