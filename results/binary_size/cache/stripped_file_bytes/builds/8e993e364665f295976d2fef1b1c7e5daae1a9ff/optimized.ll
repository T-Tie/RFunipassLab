; ModuleID = '<stdin>'
source_filename = "/tmp/tmpa57as3vu.cpp"
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
@.str = private unnamed_addr constant [2 x i8] c",\00", align 1
@stdin = external local_unnamed_addr global ptr, align 8

; Function Attrs: mustprogress norecurse uwtable
define dso_local noundef i32 @main() local_unnamed_addr #0 {
entry:
  %N = alloca i32, align 4
  %a = alloca [500 x i32], align 16
  %b = alloca [500 x i32], align 16
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %N) #4
  %call = call noundef nonnull align 8 dereferenceable(16) ptr @_ZNSirsERi(ptr noundef nonnull align 8 dereferenceable(16) @_ZSt3cin, ptr noundef nonnull align 4 dereferenceable(4) %N)
  call void @llvm.lifetime.start.p0(i64 2000, ptr nonnull %a) #4
  %0 = load i32, ptr %N, align 4, !tbaa !5
  %cmp25 = icmp sgt i32 %0, 0
  br i1 %cmp25, label %for.body, label %for.end.thread

for.end.thread:                                   ; preds = %entry
  call void @llvm.lifetime.start.p0(i64 2000, ptr nonnull %b) #4
  br label %for.end57

for.body:                                         ; preds = %entry, %for.body
  %indvars.iv = phi i64 [ %indvars.iv.next, %for.body ], [ 0, %entry ]
  %arrayidx = getelementptr inbounds nuw [500 x i32], ptr %a, i64 0, i64 %indvars.iv
  %call1 = call noundef nonnull align 8 dereferenceable(16) ptr @_ZNSirsERi(ptr noundef nonnull align 8 dereferenceable(16) @_ZSt3cin, ptr noundef nonnull align 4 dereferenceable(4) %arrayidx)
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  %1 = load i32, ptr %N, align 4, !tbaa !5
  %2 = sext i32 %1 to i64
  %cmp = icmp slt i64 %indvars.iv.next, %2
  br i1 %cmp, label %for.body, label %for.end, !llvm.loop !9

for.end:                                          ; preds = %for.body
  call void @llvm.lifetime.start.p0(i64 2000, ptr nonnull %b) #4
  %cmp327 = icmp sgt i32 %1, 0
  br i1 %cmp327, label %for.body4.preheader, label %for.end57

for.body4.preheader:                              ; preds = %for.end
  %wide.trip.count = zext nneg i32 %1 to i64
  br label %for.body4

for.cond16.preheader:                             ; preds = %for.inc13
  %sub = add i32 %p.1, -1
  %cmp1733 = icmp sgt i32 %p.1, 1
  br i1 %cmp1733, label %for.cond19.preheader, label %for.end57

for.body4:                                        ; preds = %for.body4.preheader, %for.inc13
  %indvars.iv40 = phi i64 [ 0, %for.body4.preheader ], [ %indvars.iv.next41, %for.inc13 ]
  %p.028 = phi i32 [ 0, %for.body4.preheader ], [ %p.1, %for.inc13 ]
  %arrayidx6 = getelementptr inbounds nuw [500 x i32], ptr %a, i64 0, i64 %indvars.iv40
  %3 = load i32, ptr %arrayidx6, align 4, !tbaa !5
  %4 = and i32 %3, -2147483647
  %cmp7 = icmp eq i32 %4, 1
  br i1 %cmp7, label %if.then, label %for.inc13

if.then:                                          ; preds = %for.body4
  %inc10 = add nsw i32 %p.028, 1
  %idxprom11 = sext i32 %p.028 to i64
  %arrayidx12 = getelementptr inbounds [500 x i32], ptr %b, i64 0, i64 %idxprom11
  store i32 %3, ptr %arrayidx12, align 4, !tbaa !5
  br label %for.inc13

for.inc13:                                        ; preds = %for.body4, %if.then
  %p.1 = phi i32 [ %inc10, %if.then ], [ %p.028, %for.body4 ]
  %indvars.iv.next41 = add nuw nsw i64 %indvars.iv40, 1
  %exitcond.not = icmp eq i64 %indvars.iv.next41, %wide.trip.count
  br i1 %exitcond.not, label %for.cond16.preheader, label %for.body4, !llvm.loop !12

for.cond19.preheader:                             ; preds = %for.cond16.preheader, %for.inc44
  %indvars.iv46 = phi i32 [ %indvars.iv.next47, %for.inc44 ], [ %sub, %for.cond16.preheader ]
  %m.034 = phi i32 [ %inc45, %for.inc44 ], [ 0, %for.cond16.preheader ]
  %cmp2231 = icmp sgt i32 %sub, %m.034
  br i1 %cmp2231, label %for.body23.preheader, label %for.inc44

for.body23.preheader:                             ; preds = %for.cond19.preheader
  %wide.trip.count48 = zext i32 %indvars.iv46 to i64
  %.pre = load i32, ptr %b, align 16, !tbaa !5
  br label %for.body23

for.body50.preheader:                             ; preds = %for.inc44
  %wide.trip.count54 = zext nneg i32 %sub to i64
  br label %for.body50

for.body23:                                       ; preds = %for.body23.preheader, %for.inc41
  %5 = phi i32 [ %.pre, %for.body23.preheader ], [ %7, %for.inc41 ]
  %indvars.iv43 = phi i64 [ 0, %for.body23.preheader ], [ %indvars.iv.next44, %for.inc41 ]
  %indvars.iv.next44 = add nuw nsw i64 %indvars.iv43, 1
  %arrayidx27 = getelementptr inbounds nuw [500 x i32], ptr %b, i64 0, i64 %indvars.iv.next44
  %6 = load i32, ptr %arrayidx27, align 4, !tbaa !5
  %cmp28 = icmp sgt i32 %5, %6
  br i1 %cmp28, label %if.then29, label %for.inc41

if.then29:                                        ; preds = %for.body23
  %arrayidx25 = getelementptr inbounds nuw [500 x i32], ptr %b, i64 0, i64 %indvars.iv43
  store i32 %6, ptr %arrayidx25, align 4, !tbaa !5
  store i32 %5, ptr %arrayidx27, align 4, !tbaa !5
  br label %for.inc41

for.inc41:                                        ; preds = %for.body23, %if.then29
  %7 = phi i32 [ %6, %for.body23 ], [ %5, %if.then29 ]
  %exitcond49.not = icmp eq i64 %indvars.iv.next44, %wide.trip.count48
  br i1 %exitcond49.not, label %for.inc44, label %for.body23, !llvm.loop !13

for.inc44:                                        ; preds = %for.inc41, %for.cond19.preheader
  %inc45 = add nuw nsw i32 %m.034, 1
  %indvars.iv.next47 = add i32 %indvars.iv46, -1
  %exitcond50.not = icmp eq i32 %inc45, %sub
  br i1 %exitcond50.not, label %for.body50.preheader, label %for.cond19.preheader, !llvm.loop !14

for.body50:                                       ; preds = %for.body50.preheader, %for.body50
  %indvars.iv51 = phi i64 [ 0, %for.body50.preheader ], [ %indvars.iv.next52, %for.body50 ]
  %arrayidx52 = getelementptr inbounds nuw [500 x i32], ptr %b, i64 0, i64 %indvars.iv51
  %8 = load i32, ptr %arrayidx52, align 4, !tbaa !5
  %call53 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEi(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, i32 noundef %8)
  %call1.i = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %call53, ptr noundef nonnull @.str, i64 noundef 1)
  %indvars.iv.next52 = add nuw nsw i64 %indvars.iv51, 1
  %exitcond55.not = icmp eq i64 %indvars.iv.next52, %wide.trip.count54
  br i1 %exitcond55.not, label %for.end57, label %for.body50, !llvm.loop !15

for.end57:                                        ; preds = %for.body50, %for.end.thread, %for.end, %for.cond16.preheader
  %sub6165 = phi i32 [ %sub, %for.cond16.preheader ], [ -1, %for.end ], [ -1, %for.end.thread ], [ %sub, %for.body50 ]
  %idxprom59 = sext i32 %sub6165 to i64
  %arrayidx60 = getelementptr inbounds [500 x i32], ptr %b, i64 0, i64 %idxprom59
  %9 = load i32, ptr %arrayidx60, align 4, !tbaa !5
  %call61 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEi(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, i32 noundef %9)
  %10 = load ptr, ptr @stdin, align 8, !tbaa !16
  %call.i = call i32 @getc(ptr noundef %10)
  %11 = load ptr, ptr @stdin, align 8, !tbaa !16
  %call.i24 = call i32 @getc(ptr noundef %11)
  call void @llvm.lifetime.end.p0(i64 2000, ptr nonnull %b) #4
  call void @llvm.lifetime.end.p0(i64 2000, ptr nonnull %a) #4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %N) #4
  ret i32 0
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr captures(none)) #1

declare noundef nonnull align 8 dereferenceable(16) ptr @_ZNSirsERi(ptr noundef nonnull align 8 dereferenceable(16), ptr noundef nonnull align 4 dereferenceable(4)) local_unnamed_addr #2

declare noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEi(ptr noundef nonnull align 8 dereferenceable(8), i32 noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr captures(none)) #1

; Function Attrs: nofree nounwind
declare noundef i32 @getc(ptr noundef captures(none)) local_unnamed_addr #3

declare noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8), ptr noundef, i64 noundef) local_unnamed_addr #2

attributes #0 = { mustprogress norecurse uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nofree nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nounwind }

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
!16 = !{!17, !17, i64 0}
!17 = !{!"p1 _ZTS8_IO_FILE", !18, i64 0}
!18 = !{!"any pointer", !7, i64 0}
