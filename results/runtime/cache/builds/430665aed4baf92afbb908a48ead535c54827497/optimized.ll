; ModuleID = '<stdin>'
source_filename = "/tmp/tmpeqoia8si.cpp"
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
  %word = alloca [500 x [81 x i8]], align 16
  %text = alloca [500 x [81 x i8]], align 16
  call void @llvm.lifetime.start.p0(i64 noundef 4, ptr noundef nonnull align 4 %n) #8
  call void @llvm.lifetime.start.p0(i64 noundef 40500, ptr noundef nonnull dereferenceable(40500) %word) #8
  call void @llvm.lifetime.start.p0(i64 noundef 40500, ptr noundef nonnull align 16 %text) #8
  %call = call noundef nonnull align 8 dereferenceable(16) ptr @_ZNSirsERi(ptr noundef nonnull align 8 dereferenceable(280) @_ZSt3cin, ptr noundef nonnull align 4 dereferenceable(4) %n)
  %vtable.i = load ptr, ptr @_ZSt3cin, align 8
  %vbase.offset.ptr.i = getelementptr i8, ptr %vtable.i, i64 -24
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %indvars.iv = phi i64 [ %indvars.iv.next, %for.inc ], [ 0, %entry ]
  %0 = load i32, ptr %n, align 4, !tbaa !5
  %1 = sext i32 %0 to i64
  %cmp = icmp slt i64 %indvars.iv, %1
  br i1 %cmp, label %for.body, label %for.cond2.preheader

for.cond2.preheader:                              ; preds = %for.cond
  %sub = add nsw i32 %0, -1
  %idxprom3 = sext i32 %sub to i64
  br label %for.cond2

for.body:                                         ; preds = %for.cond
  %arrayidx = getelementptr inbounds nuw [500 x [81 x i8]], ptr %word, i64 0, i64 %indvars.iv
  %2 = call i64 @llvm.objectsize.i64.p0(ptr nonnull %arrayidx, i1 noundef false, i1 noundef true, i1 noundef false)
  switch i64 %2, label %if.then6.i [
    i64 0, label %do.end.i
    i64 -1, label %if.else34.i
  ]

do.end.i:                                         ; preds = %for.body
  %vbase.offset.i = load i64, ptr %vbase.offset.ptr.i, align 8, !invariant.load !9
  %add.ptr.i = getelementptr inbounds i8, ptr @_ZSt3cin, i64 %vbase.offset.i
  %_M_width.i.i = getelementptr inbounds nuw i8, ptr %add.ptr.i, i64 16
  store i64 0, ptr %_M_width.i.i, align 8, !tbaa !10
  call void @_ZNSt9basic_iosIcSt11char_traitsIcEE8setstateESt12_Ios_Iostate(ptr noundef nonnull align 8 dereferenceable(264) %add.ptr.i, i32 noundef 4)
  br label %for.inc

if.then6.i:                                       ; preds = %for.body
  %vbase.offset9.i = load i64, ptr %vbase.offset.ptr.i, align 8, !invariant.load !9
  %add.ptr10.i = getelementptr inbounds i8, ptr @_ZSt3cin, i64 %vbase.offset9.i
  call void @_ZSt17__istream_extractRSiPcl(ptr noundef nonnull align 8 dereferenceable(16) @_ZSt3cin, ptr noundef nonnull %arrayidx, i64 noundef %2)
  %_M_streambuf_state.i.i.i = getelementptr inbounds nuw i8, ptr %add.ptr10.i, i64 32
  %3 = load i32, ptr %_M_streambuf_state.i.i.i, align 8, !tbaa !21, !invariant.load !9
  %cmp.i.i = icmp eq i32 %3, 0
  br i1 %cmp.i.i, label %land.lhs.true.i, label %for.inc

land.lhs.true.i:                                  ; preds = %if.then6.i
  %_M_width.i1.i = getelementptr inbounds nuw i8, ptr %add.ptr10.i, i64 16
  %4 = load i64, ptr %_M_width.i1.i, align 8, !tbaa !10, !invariant.load !9
  %cmp17.i = icmp slt i64 %4, 1
  %cmp18.i = icmp ult i64 %2, %4
  %or.cond.i = or i1 %cmp17.i, %cmp18.i
  br i1 %or.cond.i, label %if.then19.i, label %for.inc

if.then19.i:                                      ; preds = %land.lhs.true.i
  %_M_streambuf.i.i = getelementptr inbounds nuw i8, ptr %add.ptr10.i, i64 232
  %5 = load ptr, ptr %_M_streambuf.i.i, align 8, !tbaa !22, !invariant.load !9
  %call25.i = call noundef i32 @_ZNSt15basic_streambufIcSt11char_traitsIcEE5sgetcEv(ptr noundef nonnull align 8 dereferenceable(64) %5)
  %cmp.i2.i = icmp eq i32 %call25.i, -1
  %conv.i = zext i1 %cmp.i2.i to i64
  %expval.i = call i64 @llvm.expect.i64(i64 noundef %conv.i, i64 noundef 1)
  %tobool.not.i = icmp eq i64 %expval.i, 0
  br i1 %tobool.not.i, label %for.inc, label %if.then28.i

if.then28.i:                                      ; preds = %if.then19.i
  call void @_ZNSt9basic_iosIcSt11char_traitsIcEE8setstateESt12_Ios_Iostate(ptr noundef nonnull align 8 dereferenceable(264) %add.ptr10.i, i32 noundef 2)
  br label %for.inc

if.else34.i:                                      ; preds = %for.body
  call void @_ZSt17__istream_extractRSiPcl(ptr noundef nonnull align 8 dereferenceable(16) @_ZSt3cin, ptr noundef nonnull %arrayidx, i64 noundef 9223372036854775807)
  br label %for.inc

for.inc:                                          ; preds = %if.else34.i, %if.then28.i, %if.then19.i, %land.lhs.true.i, %if.then6.i, %do.end.i
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  br label %for.cond, !llvm.loop !30

for.cond2:                                        ; preds = %for.cond2, %for.cond2.preheader
  %indvars.iv47 = phi i64 [ %indvars.iv.next48, %for.cond2 ], [ 80, %for.cond2.preheader ]
  %arrayidx6 = getelementptr inbounds [500 x [81 x i8]], ptr %word, i64 0, i64 %idxprom3, i64 %indvars.iv47
  %6 = load i8, ptr %arrayidx6, align 1, !tbaa !33, !invariant.load !9
  %cmp7 = icmp eq i8 %6, 0
  %indvars.iv.next48 = add nsw i64 %indvars.iv47, -1
  br i1 %cmp7, label %for.cond2, label %for.cond11, !llvm.loop !34

for.cond11:                                       ; preds = %for.cond2, %for.inc25
  %7 = phi i8 [ %.pre, %for.inc25 ], [ %6, %for.cond2 ]
  %indvars.iv50 = phi i64 [ %indvars.iv.next51, %for.inc25 ], [ %indvars.iv47, %for.cond2 ]
  %cmp18 = icmp eq i8 %7, 32
  br i1 %cmp18, label %for.inc25, label %for.cond28

for.inc25:                                        ; preds = %for.cond11
  %arrayidx16 = getelementptr inbounds [500 x [81 x i8]], ptr %word, i64 0, i64 %idxprom3, i64 %indvars.iv50
  store i8 0, ptr %arrayidx16, align 1, !tbaa !33
  %indvars.iv.next51 = add nsw i64 %indvars.iv50, -1
  %arrayidx16.phi.trans.insert = getelementptr inbounds [500 x [81 x i8]], ptr %word, i64 0, i64 %idxprom3, i64 %indvars.iv.next51
  %.pre = load i8, ptr %arrayidx16.phi.trans.insert, align 1, !tbaa !33, !invariant.load !9
  br label %for.cond11, !llvm.loop !35

for.cond28:                                       ; preds = %for.cond11, %for.inc41
  %indvars.iv56 = phi i64 [ %indvars.iv.next57, %for.inc41 ], [ 0, %for.cond11 ]
  %exitcond59.not = icmp eq i64 %indvars.iv56, 500
  br i1 %exitcond59.not, label %for.cond44, label %for.cond31

for.cond31:                                       ; preds = %for.cond28, %for.inc38
  %indvars.iv53 = phi i64 [ %indvars.iv.next54, %for.inc38 ], [ 0, %for.cond28 ]
  %exitcond.not = icmp eq i64 %indvars.iv53, 81
  br i1 %exitcond.not, label %for.inc41, label %for.inc38

for.inc38:                                        ; preds = %for.cond31
  %arrayidx37 = getelementptr inbounds nuw [500 x [81 x i8]], ptr %text, i64 0, i64 %indvars.iv56, i64 %indvars.iv53
  store i8 0, ptr %arrayidx37, align 1, !tbaa !33
  %indvars.iv.next54 = add nuw nsw i64 %indvars.iv53, 1
  br label %for.cond31, !llvm.loop !36

for.inc41:                                        ; preds = %for.cond31
  %indvars.iv.next57 = add nuw nsw i64 %indvars.iv56, 1
  br label %for.cond28, !llvm.loop !37

for.cond44:                                       ; preds = %for.cond28, %for.inc93
  %.pre6364 = phi i32 [ %.pre63, %for.inc93 ], [ %0, %for.cond28 ]
  %i.4 = phi i32 [ %inc94, %for.inc93 ], [ 0, %for.cond28 ]
  %j.1 = phi i32 [ %j.2, %for.inc93 ], [ 0, %for.cond28 ]
  %len.0 = phi i32 [ %len.2, %for.inc93 ], [ 0, %for.cond28 ]
  %cmp45 = icmp slt i32 %i.4, %.pre6364
  br i1 %cmp45, label %for.body46, label %for.cond96.preheader

for.cond96.preheader:                             ; preds = %for.cond44
  %vtable.i6 = load ptr, ptr @_ZSt4cout, align 8
  %vbase.offset.ptr.i7 = getelementptr i8, ptr %vtable.i6, i64 -24
  br label %for.cond96

for.body46:                                       ; preds = %for.cond44
  %idxprom47 = sext i32 %i.4 to i64
  %arrayidx48 = getelementptr inbounds [500 x [81 x i8]], ptr %word, i64 0, i64 %idxprom47
  %call50 = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %arrayidx48) #9
  %conv51 = zext nneg i32 %len.0 to i64
  %add = add i64 %call50, %conv51
  %cmp52 = icmp ult i64 %add, 81
  br i1 %cmp52, label %if.then, label %if.else

if.then:                                          ; preds = %for.body46
  %conv59 = trunc nuw nsw i64 %add to i32
  %idxprom60 = sext i32 %j.1 to i64
  %arrayidx61 = getelementptr inbounds [500 x [81 x i8]], ptr %text, i64 0, i64 %idxprom60
  %call66 = call ptr @strcat(ptr noundef nonnull dereferenceable(1) %arrayidx61, ptr noundef nonnull dereferenceable(1) %arrayidx48) #10
  %cmp67.not = icmp eq i64 %add, 80
  %.pre63.pre = load i32, ptr %n, align 4, !tbaa !5
  br i1 %cmp67.not, label %for.inc93, label %land.lhs.true

land.lhs.true:                                    ; preds = %if.then
  %sub68 = add nsw i32 %.pre63.pre, -1
  %cmp69 = icmp slt i32 %i.4, %sub68
  br i1 %cmp69, label %if.then70, label %for.inc93

if.then70:                                        ; preds = %land.lhs.true
  %arrayidx74 = getelementptr inbounds [500 x [81 x i8]], ptr %text, i64 0, i64 %idxprom60, i64 %add
  store i8 32, ptr %arrayidx74, align 1, !tbaa !33
  %add75 = add nuw nsw i32 %conv59, 1
  br label %for.inc93

if.else:                                          ; preds = %for.body46
  %idxprom76 = sext i32 %j.1 to i64
  %sub78 = add nsw i32 %len.0, -1
  %idxprom79 = sext i32 %sub78 to i64
  %arrayidx80 = getelementptr inbounds [500 x [81 x i8]], ptr %text, i64 0, i64 %idxprom76, i64 %idxprom79
  %8 = load i8, ptr %arrayidx80, align 1, !tbaa !33
  %cmp82 = icmp eq i8 %8, 32
  br i1 %cmp82, label %if.then83, label %if.end89

if.then83:                                        ; preds = %if.else
  store i8 0, ptr %arrayidx80, align 1, !tbaa !33
  br label %if.end89

if.end89:                                         ; preds = %if.then83, %if.else
  %inc90 = add nsw i32 %j.1, 1
  %sub91 = add nsw i32 %i.4, -1
  br label %for.inc93

for.inc93:                                        ; preds = %if.end89, %if.then70, %land.lhs.true, %if.then
  %.pre63 = phi i32 [ %.pre6364, %if.end89 ], [ %.pre63.pre, %if.then70 ], [ %.pre63.pre, %land.lhs.true ], [ %.pre63.pre, %if.then ]
  %i.5 = phi i32 [ %sub91, %if.end89 ], [ %i.4, %if.then70 ], [ %i.4, %land.lhs.true ], [ %i.4, %if.then ]
  %j.2 = phi i32 [ %inc90, %if.end89 ], [ %j.1, %if.then70 ], [ %j.1, %land.lhs.true ], [ %j.1, %if.then ]
  %len.2 = phi i32 [ 0, %if.end89 ], [ %add75, %if.then70 ], [ %conv59, %land.lhs.true ], [ 80, %if.then ]
  %inc94 = add nsw i32 %i.5, 1
  br label %for.cond44, !llvm.loop !38

for.cond96:                                       ; preds = %for.cond96.preheader, %for.inc108
  %indvars.iv60 = phi i64 [ 0, %for.cond96.preheader ], [ %indvars.iv.next61, %for.inc108 ]
  %arrayidx98 = getelementptr inbounds nuw [500 x [81 x i8]], ptr %text, i64 0, i64 %indvars.iv60
  %9 = load i8, ptr %arrayidx98, align 1, !tbaa !33
  %cmp101.not = icmp eq i8 %9, 0
  br i1 %cmp101.not, label %for.end110, label %for.inc108

for.inc108:                                       ; preds = %for.cond96
  %call.i.i = call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %arrayidx98) #10
  %call1.i = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, ptr noundef nonnull %arrayidx98, i64 noundef %call.i.i)
  %vbase.offset.i8 = load i64, ptr %vbase.offset.ptr.i7, align 8, !invariant.load !9
  %add.ptr.i9 = getelementptr inbounds i8, ptr @_ZSt4cout, i64 %vbase.offset.i8
  %call.i10 = call noundef signext i8 @_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc(ptr noundef nonnull align 8 dereferenceable(264) %add.ptr.i9, i8 noundef signext 10)
  %call1.i11 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, i8 noundef signext %call.i10)
  %call.i.i12 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo5flushEv(ptr noundef nonnull align 8 dereferenceable(8) %call1.i11)
  %indvars.iv.next61 = add nuw nsw i64 %indvars.iv60, 1
  br label %for.cond96, !llvm.loop !39

for.end110:                                       ; preds = %for.cond96
  call void @llvm.lifetime.end.p0(i64 noundef 40500, ptr noundef nonnull %text) #10
  call void @llvm.lifetime.end.p0(i64 noundef 40500, ptr noundef nonnull %word) #10
  call void @llvm.lifetime.end.p0(i64 noundef 4, ptr noundef nonnull %n) #10
  ret i32 0
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr captures(none)) #1

declare noundef nonnull align 8 dereferenceable(16) ptr @_ZNSirsERi(ptr noundef nonnull align 8 dereferenceable(16), ptr noundef nonnull align 4 dereferenceable(4)) local_unnamed_addr #2

; Function Attrs: nounwind willreturn memory(read)
declare i64 @strlen(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind
declare ptr @strcat(ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr captures(none)) #1

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.objectsize.i64.p0(ptr, i1 immarg, i1 immarg, i1 immarg) #5

; Function Attrs: mustprogress uwtable
declare void @_ZNSt9basic_iosIcSt11char_traitsIcEE8setstateESt12_Ios_Iostate(ptr noundef nonnull align 8 dereferenceable(264), i32 noundef) local_unnamed_addr #6 align 2

declare void @_ZSt17__istream_extractRSiPcl(ptr noundef nonnull align 8 dereferenceable(16), ptr noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: mustprogress uwtable
declare noundef i32 @_ZNSt15basic_streambufIcSt11char_traitsIcEE5sgetcEv(ptr noundef nonnull align 8 dereferenceable(64)) local_unnamed_addr #6 align 2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(none)
declare i64 @llvm.expect.i64(i64, i64) #7

declare noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8), ptr noundef, i64 noundef) local_unnamed_addr #2

declare noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8), i8 noundef signext) local_unnamed_addr #2

; Function Attrs: mustprogress uwtable
declare noundef signext i8 @_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc(ptr noundef nonnull align 8 dereferenceable(264), i8 noundef signext) local_unnamed_addr #6 align 2

declare noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo5flushEv(ptr noundef nonnull align 8 dereferenceable(8)) local_unnamed_addr #2

attributes #0 = { mustprogress norecurse uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nounwind willreturn memory(read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #6 = { mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { nocallback nofree nosync nounwind willreturn memory(none) }
attributes #8 = { nofree nounwind }
attributes #9 = { nounwind willreturn memory(read) }
attributes #10 = { nounwind }

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
!9 = !{}
!10 = !{!11, !12, i64 16}
!11 = !{!"_ZTSSt8ios_base", !12, i64 8, !12, i64 16, !13, i64 24, !14, i64 28, !14, i64 32, !15, i64 40, !17, i64 48, !7, i64 64, !6, i64 192, !18, i64 200, !19, i64 208}
!12 = !{!"long", !7, i64 0}
!13 = !{!"_ZTSSt13_Ios_Fmtflags", !7, i64 0}
!14 = !{!"_ZTSSt12_Ios_Iostate", !7, i64 0}
!15 = !{!"p1 _ZTSNSt8ios_base14_Callback_listE", !16, i64 0}
!16 = !{!"any pointer", !7, i64 0}
!17 = !{!"_ZTSNSt8ios_base6_WordsE", !16, i64 0, !12, i64 8}
!18 = !{!"p1 _ZTSNSt8ios_base6_WordsE", !16, i64 0}
!19 = !{!"_ZTSSt6locale", !20, i64 0}
!20 = !{!"p1 _ZTSNSt6locale5_ImplE", !16, i64 0}
!21 = !{!11, !14, i64 32}
!22 = !{!23, !26, i64 232}
!23 = !{!"_ZTSSt9basic_iosIcSt11char_traitsIcEE", !11, i64 0, !24, i64 216, !7, i64 224, !25, i64 225, !26, i64 232, !27, i64 240, !28, i64 248, !29, i64 256}
!24 = !{!"p1 _ZTSSo", !16, i64 0}
!25 = !{!"bool", !7, i64 0}
!26 = !{!"p1 _ZTSSt15basic_streambufIcSt11char_traitsIcEE", !16, i64 0}
!27 = !{!"p1 _ZTSSt5ctypeIcE", !16, i64 0}
!28 = !{!"p1 _ZTSSt7num_putIcSt19ostreambuf_iteratorIcSt11char_traitsIcEEE", !16, i64 0}
!29 = !{!"p1 _ZTSSt7num_getIcSt19istreambuf_iteratorIcSt11char_traitsIcEEE", !16, i64 0}
!30 = distinct !{!30, !31, !32}
!31 = !{!"llvm.loop.mustprogress"}
!32 = !{!"llvm.loop.unroll.disable"}
!33 = !{!7, !7, i64 0}
!34 = distinct !{!34, !31, !32}
!35 = distinct !{!35, !31, !32}
!36 = distinct !{!36, !31, !32}
!37 = distinct !{!37, !31, !32}
!38 = distinct !{!38, !31, !32}
!39 = distinct !{!39, !31, !32}
