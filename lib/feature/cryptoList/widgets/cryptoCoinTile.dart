import 'package:flutter/material.dart';
// import 'package:test_list_flutter/repo/crypto_coins_repo/model/crypto_coin.dart';
import 'package:test_list_flutter/repo/crypto_coins_repo/crypto_coin.dart';

class CryptoCoinTile extends StatelessWidget {
  const CryptoCoinTile({
    super.key,
    required this.coin,
  });

  final CryptoCoin coin;

  @override
  Widget build(BuildContext context) {
    final them = Theme.of(context);
    return ListTile(
      contentPadding: const EdgeInsets.symmetric(horizontal: 16),
      leading: ClipRRect(
        borderRadius: BorderRadius.circular(20),
        child: Image.network(
          coin.details.fullImageURLPath!,
          width: 40,
          height: 40,
          fit: BoxFit.cover,
        ),
      ),
      trailing: const Icon(
        Icons.arrow_forward_ios,
        color: Colors.white,
      ),
      onTap: () {
        Navigator.pushNamed(context, '/coin', arguments: coin);
      },
      title: Text(
        coin.name,
        style: them.textTheme.bodyMedium,
      ),
      subtitle: Text(
        'Price: ${coin.details.priceInUSD}\$',
        style: them.textTheme.labelSmall,
      ),
    );
  }
}
