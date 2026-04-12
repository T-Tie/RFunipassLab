; ModuleID = '<stdin>'
source_filename = "/tmp/tmp8_19d3ny.cpp"
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
  %__c.addr.i58 = alloca i8, align 1
  %__c.addr.i = alloca i8, align 1
  %n = alloca i32, align 4
  %word = alloca [1000 x [41 x i8]], align 16
  %newword = alloca [1000 x [81 x i8]], align 16
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %n) #8
  call void @llvm.lifetime.start.p0(i64 41000, ptr nonnull %word) #8
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(41000) %word, i8 0, i64 41000, i1 false)
  call void @llvm.lifetime.start.p0(i64 81000, ptr nonnull %newword) #8
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(81000) %newword, i8 0, i64 81000, i1 false)
  %call = call noundef nonnull align 8 dereferenceable(16) ptr @_ZNSirsERi(ptr noundef nonnull align 8 dereferenceable(16) @_ZSt3cin, ptr noundef nonnull align 4 dereferenceable(4) %n)
  br label %for.cond

for.cond:                                         ; preds = %if.else34.i, %entry
  %indvars.iv = phi i64 [ %indvars.iv.next, %if.else34.i ], [ 0, %entry ]
  %0 = load i32, ptr %n, align 4, !tbaa !5
  %1 = sext i32 %0 to i64
  %cmp = icmp slt i64 %indvars.iv, %1
  br i1 %cmp, label %if.else34.i, label %for.cond2.preheader

for.cond2.preheader:                              ; preds = %for.cond
  %smax = call i32 @llvm.smax.i32(i32 %0, i32 0)
  %wide.trip.count = zext nneg i32 %smax to i64
  br label %for.cond2

if.else34.i:                                      ; preds = %for.cond
  %arrayidx = getelementptr inbounds nuw [1000 x [41 x i8]], ptr %word, i64 0, i64 %indvars.iv
  call void @_ZSt17__istream_extractRSiPcl(ptr noundef nonnull align 8 dereferenceable(16) @_ZSt3cin, ptr noundef nonnull %arrayidx, i64 noundef 9223372036854775807)
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  br label %for.cond, !llvm.loop !9

for.cond2:                                        ; preds = %for.cond2.preheader, %for.inc74
  %indvars.iv81 = phi i64 [ 0, %for.cond2.preheader ], [ %indvars.iv.next82, %for.inc74 ]
  %j.0 = phi i32 [ 0, %for.cond2.preheader ], [ %j.1, %for.inc74 ]
  %k.0 = phi i32 [ 0, %for.cond2.preheader ], [ %k.1, %for.inc74 ]
  %exitcond.not = icmp eq i64 %indvars.iv81, %wide.trip.count
  br i1 %exitcond.not, label %for.end76, label %for.body4

for.body4:                                        ; preds = %for.cond2
  %arrayidx6 = getelementptr inbounds nuw [1000 x [41 x i8]], ptr %word, i64 0, i64 %indvars.iv81
  %call8 = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %arrayidx6) #9
  %conv = trunc i64 %call8 to i32
  %add = add nsw i32 %j.0, %conv
  %cmp9 = icmp sgt i32 %add, 80
  br i1 %cmp9, label %if.then, label %if.else

if.then:                                          ; preds = %for.body4
  %idxprom10 = sext i32 %k.0 to i64
  %sub = add nsw i32 %j.0, -1
  %idxprom12 = sext i32 %sub to i64
  %arrayidx13 = getelementptr inbounds [1000 x [81 x i8]], ptr %newword, i64 0, i64 %idxprom10, i64 %idxprom12
  store i8 0, ptr %arrayidx13, align 1, !tbaa !12
  %idxprom16 = sext i32 %j.0 to i64
  %arrayidx17 = getelementptr inbounds [1000 x [81 x i8]], ptr %newword, i64 0, i64 %idxprom10, i64 %idxprom16
  store i8 0, ptr %arrayidx17, align 1, !tbaa !12
  %inc18 = add nsw i32 %k.0, 1
  %idxprom19 = sext i32 %inc18 to i64
  %arrayidx20 = getelementptr inbounds [1000 x [81 x i8]], ptr %newword, i64 0, i64 %idxprom19
  %call25 = call ptr @strcpy(ptr noundef nonnull dereferenceable(1) %arrayidx20, ptr noundef nonnull dereferenceable(1) %arrayidx6) #8
  %sext = shl i64 %call8, 32
  %idxprom28 = ashr exact i64 %sext, 32
  %arrayidx29 = getelementptr inbounds [1000 x [81 x i8]], ptr %newword, i64 0, i64 %idxprom19, i64 %idxprom28
  store i8 32, ptr %arrayidx29, align 1, !tbaa !12
  %inc30 = add nsw i32 %conv, 1
  br label %for.inc74

if.else:                                          ; preds = %for.body4
  %cmp32 = icmp eq i32 %add, 80
  br i1 %cmp32, label %if.then33, label %if.else42

if.then33:                                        ; preds = %if.else
  %idxprom34 = sext i32 %k.0 to i64
  %arrayidx35 = getelementptr inbounds [1000 x [81 x i8]], ptr %newword, i64 0, i64 %idxprom34
  %call40 = call ptr @strcat(ptr noundef nonnull dereferenceable(1) %arrayidx35, ptr noundef nonnull dereferenceable(1) %arrayidx6) #8
  %inc41 = add nsw i32 %k.0, 1
  br label %for.inc74

if.else42:                                        ; preds = %if.else
  %cmp43 = icmp eq i32 %j.0, 0
  %idxprom45 = sext i32 %k.0 to i64
  %arrayidx46 = getelementptr inbounds [1000 x [81 x i8]], ptr %newword, i64 0, i64 %idxprom45
  %idxprom55 = sext i32 %add to i64
  %arrayidx56 = getelementptr inbounds [1000 x [81 x i8]], ptr %newword, i64 0, i64 %idxprom45, i64 %idxprom55
  %inc57 = add nsw i32 %add, 1
  br i1 %cmp43, label %if.then44, label %if.else58

if.then44:                                        ; preds = %if.else42
  %call51 = call ptr @strcpy(ptr noundef nonnull dereferenceable(1) %arrayidx46, ptr noundef nonnull dereferenceable(1) %arrayidx6) #8
  store i8 32, ptr %arrayidx56, align 1, !tbaa !12
  br label %for.inc74

if.else58:                                        ; preds = %if.else42
  %call65 = call ptr @strcat(ptr noundef nonnull dereferenceable(1) %arrayidx46, ptr noundef nonnull dereferenceable(1) %arrayidx6) #8
  store i8 32, ptr %arrayidx56, align 1, !tbaa !12
  br label %for.inc74

for.inc74:                                        ; preds = %if.then, %if.then44, %if.else58, %if.then33
  %j.1 = phi i32 [ %inc30, %if.then ], [ 0, %if.then33 ], [ %inc57, %if.then44 ], [ %inc57, %if.else58 ]
  %k.1 = phi i32 [ %inc18, %if.then ], [ %inc41, %if.then33 ], [ %k.0, %if.then44 ], [ %k.0, %if.else58 ]
  %indvars.iv.next82 = add nuw nsw i64 %indvars.iv81, 1
  br label %for.cond2, !llvm.loop !13

for.end76:                                        ; preds = %for.cond2
  %idxprom77 = sext i32 %k.0 to i64
  %sub79 = add nsw i32 %j.0, -1
  %idxprom80 = sext i32 %sub79 to i64
  %arrayidx81 = getelementptr inbounds [1000 x [81 x i8]], ptr %newword, i64 0, i64 %idxprom77, i64 %idxprom80
  store i8 0, ptr %arrayidx81, align 1, !tbaa !12
  %idxprom84 = sext i32 %j.0 to i64
  %arrayidx85 = getelementptr inbounds [1000 x [81 x i8]], ptr %newword, i64 0, i64 %idxprom77, i64 %idxprom84
  store i8 0, ptr %arrayidx85, align 1, !tbaa !12
  %smax95 = call i32 @llvm.smax.i32(i32 %k.0, i32 -1)
  %2 = add i32 %smax95, 1
  %wide.trip.count96 = zext i32 %2 to i64
  br label %for.cond86

for.cond86:                                       ; preds = %for.inc116, %for.end76
  %indvars.iv91 = phi i64 [ %indvars.iv.next92, %for.inc116 ], [ 0, %for.end76 ]
  %exitcond97 = icmp eq i64 %indvars.iv91, %wide.trip.count96
  br i1 %exitcond97, label %for.end118, label %for.body88

for.body88:                                       ; preds = %for.cond86
  %arrayidx90 = getelementptr inbounds nuw [1000 x [81 x i8]], ptr %newword, i64 0, i64 %indvars.iv91
  %call92 = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %arrayidx90) #9
  %conv93 = trunc i64 %call92 to i32
  %sub97 = add i64 %call92, 4294967295
  %3 = and i64 %sub97, 4294967295
  %smax88 = call i32 @llvm.smax.i32(i32 %conv93, i32 0)
  %wide.trip.count89 = zext nneg i32 %smax88 to i64
  %arrayidx103 = getelementptr inbounds nuw [1000 x [81 x i8]], ptr %newword, i64 0, i64 %indvars.iv91, i64 %3
  br label %for.cond94

for.cond94:                                       ; preds = %for.inc113, %for.body88
  %indvars.iv85 = phi i64 [ %indvars.iv.next86, %for.inc113 ], [ 0, %for.body88 ]
  %exitcond90.not = icmp eq i64 %indvars.iv85, %wide.trip.count89
  br i1 %exitcond90.not, label %for.inc116, label %for.body96

for.body96:                                       ; preds = %for.cond94
  %cmp98 = icmp eq i64 %indvars.iv85, %3
  br i1 %cmp98, label %if.then99, label %if.else106

if.then99:                                        ; preds = %for.body96
  %4 = load i8, ptr %arrayidx103, align 1, !tbaa !12
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %__c.addr.i)
  store i8 %4, ptr %__c.addr.i, align 1, !tbaa !12
  %vtable.i53 = load ptr, ptr @_ZSt4cout, align 8, !tbaa !14
  %vbase.offset.ptr.i54 = getelementptr i8, ptr %vtable.i53, i64 -24
  %vbase.offset.i55 = load i64, ptr %vbase.offset.ptr.i54, align 8
  %gep79 = getelementptr i8, ptr getelementptr inbounds nuw (i8, ptr @_ZSt4cout, i64 16), i64 %vbase.offset.i55
  %5 = load i64, ptr %gep79, align 8, !tbaa !16
  %cmp.not.i = icmp eq i64 %5, 0
  br i1 %cmp.not.i, label %if.end.i, label %if.then.i

if.then.i:                                        ; preds = %if.then99
  %call1.i = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, ptr noundef nonnull %__c.addr.i, i64 noundef 1)
  br label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit

if.end.i:                                         ; preds = %if.then99
  %call2.i = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, i8 noundef signext %4)
  br label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit: ; preds = %if.then.i, %if.end.i
  %retval.0.i = phi ptr [ %call1.i, %if.then.i ], [ @_ZSt4cout, %if.end.i ]
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %__c.addr.i)
  %vtable.i71 = load ptr, ptr %retval.0.i, align 8, !tbaa !14
  %vbase.offset.ptr.i72 = getelementptr i8, ptr %vtable.i71, i64 -24
  %vbase.offset.i73 = load i64, ptr %vbase.offset.ptr.i72, align 8
  %add.ptr.i74 = getelementptr inbounds i8, ptr %retval.0.i, i64 %vbase.offset.i73
  %call.i75 = call noundef signext i8 @_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc(ptr noundef nonnull align 8 dereferenceable(264) %add.ptr.i74, i8 noundef signext 10)
  %call1.i76 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8) %retval.0.i, i8 noundef signext %call.i75)
  %call.i.i = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo5flushEv(ptr noundef nonnull align 8 dereferenceable(8) %call1.i76)
  br label %for.inc113

if.else106:                                       ; preds = %for.body96
  %arrayidx110 = getelementptr inbounds nuw [1000 x [81 x i8]], ptr %newword, i64 0, i64 %indvars.iv91, i64 %indvars.iv85
  %6 = load i8, ptr %arrayidx110, align 1, !tbaa !12
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %__c.addr.i58)
  store i8 %6, ptr %__c.addr.i58, align 1, !tbaa !12
  %vtable.i59 = load ptr, ptr @_ZSt4cout, align 8, !tbaa !14
  %vbase.offset.ptr.i60 = getelementptr i8, ptr %vtable.i59, i64 -24
  %vbase.offset.i61 = load i64, ptr %vbase.offset.ptr.i60, align 8
  %gep78 = getelementptr i8, ptr getelementptr inbounds nuw (i8, ptr @_ZSt4cout, i64 16), i64 %vbase.offset.i61
  %7 = load i64, ptr %gep78, align 8, !tbaa !16
  %cmp.not.i64 = icmp eq i64 %7, 0
  br i1 %cmp.not.i64, label %if.end.i68, label %if.then.i65

if.then.i65:                                      ; preds = %if.else106
  %call1.i66 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, ptr noundef nonnull %__c.addr.i58, i64 noundef 1)
  br label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit70

if.end.i68:                                       ; preds = %if.else106
  %call2.i69 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, i8 noundef signext %6)
  br label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit70

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit70: ; preds = %if.then.i65, %if.end.i68
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %__c.addr.i58)
  br label %for.inc113

for.inc113:                                       ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit70
  %indvars.iv.next86 = add nuw nsw i64 %indvars.iv85, 1
  br label %for.cond94, !llvm.loop !27

for.inc116:                                       ; preds = %for.cond94
  %indvars.iv.next92 = add nuw nsw i64 %indvars.iv91, 1
  br label %for.cond86, !llvm.loop !28

for.end118:                                       ; preds = %for.cond86
  call void @llvm.lifetime.end.p0(i64 81000, ptr nonnull %newword) #8
  call void @llvm.lifetime.end.p0(i64 41000, ptr nonnull %word) #8
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %n) #8
  ret i32 0
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr captures(none)) #1

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #2

declare noundef nonnull align 8 dereferenceable(16) ptr @_ZNSirsERi(ptr noundef nonnull align 8 dereferenceable(16), ptr noundef nonnull align 4 dereferenceable(4)) local_unnamed_addr #3

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: read)
declare i64 @strlen(ptr noundef captures(none)) local_unnamed_addr #4

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare ptr @strcpy(ptr noalias noundef returned writeonly, ptr noalias noundef readonly captures(none)) local_unnamed_addr #5

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare ptr @strcat(ptr noalias noundef returned, ptr noalias noundef readonly captures(none)) local_unnamed_addr #5

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr captures(none)) #1

declare void @_ZSt17__istream_extractRSiPcl(ptr noundef nonnull align 8 dereferenceable(16), ptr noundef, i64 noundef) local_unnamed_addr #3

declare noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8), ptr noundef, i64 noundef) local_unnamed_addr #3

declare noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8), i8 noundef signext) local_unnamed_addr #3

; Function Attrs: mustprogress uwtable
declare noundef signext i8 @_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc(ptr noundef nonnull align 8 dereferenceable(264), i8 noundef signext) local_unnamed_addr #6 align 2

declare noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo5flushEv(ptr noundef nonnull align 8 dereferenceable(8)) local_unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smax.i32(i32, i32) #7

attributes #0 = { mustprogress norecurse uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #3 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #8 = { nounwind }
attributes #9 = { nounwind willreturn memory(read) }

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
!12 = !{!7, !7, i64 0}
!13 = distinct !{!13, !10, !11}
!14 = !{!15, !15, i64 0}
!15 = !{!"vtable pointer", !8, i64 0}
!16 = !{!17, !18, i64 16}
!17 = !{!"_ZTSSt8ios_base", !18, i64 8, !18, i64 16, !19, i64 24, !20, i64 28, !20, i64 32, !21, i64 40, !23, i64 48, !7, i64 64, !6, i64 192, !24, i64 200, !25, i64 208}
!18 = !{!"long", !7, i64 0}
!19 = !{!"_ZTSSt13_Ios_Fmtflags", !7, i64 0}
!20 = !{!"_ZTSSt12_Ios_Iostate", !7, i64 0}
!21 = !{!"p1 _ZTSNSt8ios_base14_Callback_listE", !22, i64 0}
!22 = !{!"any pointer", !7, i64 0}
!23 = !{!"_ZTSNSt8ios_base6_WordsE", !22, i64 0, !18, i64 8}
!24 = !{!"p1 _ZTSNSt8ios_base6_WordsE", !22, i64 0}
!25 = !{!"_ZTSSt6locale", !26, i64 0}
!26 = !{!"p1 _ZTSNSt6locale5_ImplE", !22, i64 0}
!27 = distinct !{!27, !10, !11}
!28 = distinct !{!28, !10, !11}
