; ModuleID = '<stdin>'
source_filename = "/tmp/tmpl9r83vc4.cpp"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

module asm ".globl _ZSt21ios_base_library_initv"

%"class.std::basic_ostream" = type { ptr, %"class.std::basic_ios" }
%"class.std::basic_ios" = type { %"class.std::ios_base", ptr, i8, i8, ptr, ptr, ptr, ptr }
%"class.std::ios_base" = type { ptr, i64, i64, i32, i32, i32, ptr, %"struct.std::ios_base::_Words", [8 x %"struct.std::ios_base::_Words"], i32, ptr, %"class.std::locale" }
%"struct.std::ios_base::_Words" = type { ptr, i64 }
%"class.std::locale" = type { ptr }

@_ZSt4cout = external global %"class.std::basic_ostream", align 8
@stdin = external local_unnamed_addr global ptr, align 8

; Function Attrs: mustprogress norecurse uwtable
define dso_local noundef i32 @main() local_unnamed_addr #0 {
entry:
  %__c.addr.i = alloca i8, align 1
  %str = alloca [10000 x i8], align 16
  %b = alloca [100000 x i32], align 16
  call void @llvm.lifetime.start.p0(i64 10000, ptr nonnull %str) #6
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(10000) %str, i8 0, i64 10000, i1 false)
  call void @llvm.lifetime.start.p0(i64 400000, ptr nonnull %b) #6
  br label %while.cond

while.cond:                                       ; preds = %while.body, %entry
  %indvars.iv22 = phi i32 [ %indvars.iv.next23, %while.body ], [ 0, %entry ]
  %indvars.iv = phi i64 [ %indvars.iv.next, %while.body ], [ 0, %entry ]
  %0 = load ptr, ptr @stdin, align 8, !tbaa !5
  %call.i = tail call i32 @getc(ptr noundef %0)
  %sext.mask = and i32 %call.i, 255
  %cmp.not = icmp eq i32 %sext.mask, 10
  br i1 %cmp.not, label %for.cond.preheader, label %while.body

for.cond.preheader:                               ; preds = %while.cond
  %wide.trip.count = zext i32 %indvars.iv22 to i64
  br label %for.cond

while.body:                                       ; preds = %while.cond
  %conv = trunc i32 %call.i to i8
  %arrayidx = getelementptr inbounds nuw [10000 x i8], ptr %str, i64 0, i64 %indvars.iv
  store i8 %conv, ptr %arrayidx, align 1, !tbaa !10
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  %indvars.iv.next23 = add nuw i32 %indvars.iv22, 1
  br label %while.cond, !llvm.loop !11

for.cond:                                         ; preds = %for.cond.preheader, %for.inc
  %indvars.iv18 = phi i64 [ 0, %for.cond.preheader ], [ %indvars.iv.next19, %for.inc ]
  %j.0 = phi i32 [ 0, %for.cond.preheader ], [ %j.1, %for.inc ]
  %exitcond.not = icmp eq i64 %indvars.iv18, %wide.trip.count
  br i1 %exitcond.not, label %for.cond15.preheader, label %for.body

for.cond15.preheader:                             ; preds = %for.cond
  %smax = tail call i32 @llvm.smax.i32(i32 %j.0, i32 0)
  %wide.trip.count28 = zext nneg i32 %smax to i64
  br label %for.cond15

for.body:                                         ; preds = %for.cond
  %arrayidx4 = getelementptr inbounds nuw [10000 x i8], ptr %str, i64 0, i64 %indvars.iv18
  %1 = load i8, ptr %arrayidx4, align 1, !tbaa !10
  %cmp6 = icmp eq i8 %1, 32
  br i1 %cmp6, label %land.lhs.true, label %for.inc

land.lhs.true:                                    ; preds = %for.body
  %2 = add nsw i64 %indvars.iv18, -1
  %arrayidx8 = getelementptr inbounds [10000 x i8], ptr %str, i64 0, i64 %2
  %3 = load i8, ptr %arrayidx8, align 1, !tbaa !10
  %cmp10 = icmp eq i8 %3, 32
  br i1 %cmp10, label %if.then, label %for.inc

if.then:                                          ; preds = %land.lhs.true
  %idxprom11 = sext i32 %j.0 to i64
  %arrayidx12 = getelementptr inbounds [100000 x i32], ptr %b, i64 0, i64 %idxprom11
  %4 = trunc nuw nsw i64 %indvars.iv18 to i32
  store i32 %4, ptr %arrayidx12, align 4, !tbaa !14
  %inc13 = add nsw i32 %j.0, 1
  br label %for.inc

for.inc:                                          ; preds = %for.body, %land.lhs.true, %if.then
  %j.1 = phi i32 [ %inc13, %if.then ], [ %j.0, %land.lhs.true ], [ %j.0, %for.body ]
  %indvars.iv.next19 = add nuw nsw i64 %indvars.iv18, 1
  br label %for.cond, !llvm.loop !16

for.cond15:                                       ; preds = %for.cond15.preheader, %for.inc35
  %indvars.iv30 = phi i64 [ 0, %for.cond15.preheader ], [ %indvars.iv.next31, %for.inc35 ]
  %exitcond35.not = icmp eq i64 %indvars.iv30, %wide.trip.count
  br i1 %exitcond35.not, label %for.end37, label %for.cond18

for.cond18:                                       ; preds = %for.cond15, %for.body20
  %indvars.iv24 = phi i64 [ %indvars.iv.next25, %for.body20 ], [ 0, %for.cond15 ]
  %sum.0 = phi i32 [ %add, %for.body20 ], [ 0, %for.cond15 ]
  %exitcond29.not = icmp eq i64 %indvars.iv24, %wide.trip.count28
  br i1 %exitcond29.not, label %for.end28, label %for.body20

for.body20:                                       ; preds = %for.cond18
  %arrayidx22 = getelementptr inbounds nuw [100000 x i32], ptr %b, i64 0, i64 %indvars.iv24
  %5 = load i32, ptr %arrayidx22, align 4, !tbaa !14
  %6 = zext i32 %5 to i64
  %cmp23.not = icmp eq i64 %indvars.iv30, %6
  %. = zext i1 %cmp23.not to i32
  %add = add nuw nsw i32 %sum.0, %.
  %indvars.iv.next25 = add nuw nsw i64 %indvars.iv24, 1
  br label %for.cond18, !llvm.loop !17

for.end28:                                        ; preds = %for.cond18
  %cmp29 = icmp eq i32 %sum.0, 0
  br i1 %cmp29, label %if.then30, label %for.inc35

if.then30:                                        ; preds = %for.end28
  %arrayidx32 = getelementptr inbounds nuw [10000 x i8], ptr %str, i64 0, i64 %indvars.iv30
  %7 = load i8, ptr %arrayidx32, align 1, !tbaa !10
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %__c.addr.i)
  store i8 %7, ptr %__c.addr.i, align 1, !tbaa !10
  %vtable.i = load ptr, ptr @_ZSt4cout, align 8, !tbaa !18
  %vbase.offset.ptr.i = getelementptr i8, ptr %vtable.i, i64 -24
  %vbase.offset.i = load i64, ptr %vbase.offset.ptr.i, align 8
  %gep = getelementptr i8, ptr getelementptr inbounds nuw (i8, ptr @_ZSt4cout, i64 16), i64 %vbase.offset.i
  %8 = load i64, ptr %gep, align 8, !tbaa !20
  %cmp.not.i = icmp eq i64 %8, 0
  br i1 %cmp.not.i, label %if.end.i, label %if.then.i

if.then.i:                                        ; preds = %if.then30
  %call1.i = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, ptr noundef nonnull %__c.addr.i, i64 noundef 1)
  br label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit

if.end.i:                                         ; preds = %if.then30
  %call2.i = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, i8 noundef signext %7)
  br label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit: ; preds = %if.then.i, %if.end.i
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %__c.addr.i)
  br label %for.inc35

for.inc35:                                        ; preds = %for.end28, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit
  %indvars.iv.next31 = add nuw nsw i64 %indvars.iv30, 1
  br label %for.cond15, !llvm.loop !30

for.end37:                                        ; preds = %for.cond15
  call void @llvm.lifetime.end.p0(i64 400000, ptr nonnull %b) #6
  call void @llvm.lifetime.end.p0(i64 10000, ptr nonnull %str) #6
  ret i32 0
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr captures(none)) #1

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #2

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr captures(none)) #1

; Function Attrs: nofree nounwind
declare noundef i32 @getc(ptr noundef captures(none)) local_unnamed_addr #3

declare noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8), ptr noundef, i64 noundef) local_unnamed_addr #4

declare noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8), i8 noundef signext) local_unnamed_addr #4

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smax.i32(i32, i32) #5

attributes #0 = { mustprogress norecurse uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #3 = { nofree nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
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
!6 = !{!"p1 _ZTS8_IO_FILE", !7, i64 0}
!7 = !{!"any pointer", !8, i64 0}
!8 = !{!"omnipotent char", !9, i64 0}
!9 = !{!"Simple C++ TBAA"}
!10 = !{!8, !8, i64 0}
!11 = distinct !{!11, !12, !13}
!12 = !{!"llvm.loop.mustprogress"}
!13 = !{!"llvm.loop.unroll.disable"}
!14 = !{!15, !15, i64 0}
!15 = !{!"int", !8, i64 0}
!16 = distinct !{!16, !12, !13}
!17 = distinct !{!17, !12, !13}
!18 = !{!19, !19, i64 0}
!19 = !{!"vtable pointer", !9, i64 0}
!20 = !{!21, !22, i64 16}
!21 = !{!"_ZTSSt8ios_base", !22, i64 8, !22, i64 16, !23, i64 24, !24, i64 28, !24, i64 32, !25, i64 40, !26, i64 48, !8, i64 64, !15, i64 192, !27, i64 200, !28, i64 208}
!22 = !{!"long", !8, i64 0}
!23 = !{!"_ZTSSt13_Ios_Fmtflags", !8, i64 0}
!24 = !{!"_ZTSSt12_Ios_Iostate", !8, i64 0}
!25 = !{!"p1 _ZTSNSt8ios_base14_Callback_listE", !7, i64 0}
!26 = !{!"_ZTSNSt8ios_base6_WordsE", !7, i64 0, !22, i64 8}
!27 = !{!"p1 _ZTSNSt8ios_base6_WordsE", !7, i64 0}
!28 = !{!"_ZTSSt6locale", !29, i64 0}
!29 = !{!"p1 _ZTSNSt6locale5_ImplE", !7, i64 0}
!30 = distinct !{!30, !12, !13}
