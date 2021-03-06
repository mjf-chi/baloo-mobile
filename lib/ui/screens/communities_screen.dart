import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'package:baloo/core/constants/routes.dart';
import 'package:baloo/ui/components/base_data_widget.dart';
import 'package:baloo/ui/screens/Communities/user_communities_list.dart';
import 'package:baloo/ui/screens/Communities/community_search_results.dart';
import 'package:baloo/ui/screens/Communities/community_search_bar.dart';

import 'package:baloo/ui/components/Navigation/nav_bar.dart';
import 'package:baloo/ui/components/Navigation/nav_action_button.dart';

// Models
import 'package:baloo/core/viewmodels/community_search_model.dart';


class CommunitiesScreen extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage("assets/images/communities_bg.jpg"),
            fit: BoxFit.cover,
          ),
        ),
        child: BaseDataWidget<CommunitySearchModel>(
          model: CommunitySearchModel(api: Provider.of(context)),
          onModelReady: (model) => { /* TODO mjf: fetch data */ },
          builder: (context, communitySearch, child) =>
            CustomScrollView(
              slivers: <Widget>[
                SliverToBoxAdapter(child: UserCommunitiesList()),
                SliverToBoxAdapter(child: CommunitySearchBar(search: communitySearch.searchCommunities)),
                CommunitySearchResults(communities: communitySearch.communities),
              ],
            ),
        ),
      ),
      bottomNavigationBar: BottomAppBar(
        child: Hero(
          tag: 'navBar',
          child: NavBar(),
        ),
      ),
      floatingActionButton: NavActionButton(),
    );
  }
}
